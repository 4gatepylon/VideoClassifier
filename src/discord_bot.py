import os
import subprocess

from os.path import join, dirname
from dotenv import load_dotenv

import discord

# check https://discordpy.readthedocs.io/en/latest/api.html (I based this on my streak bot though)
from discord.ext import commands

from models.classification_lang_detect_model import predict_given_youtube_url
from title_classifier import init_lang_distributions

# programmed to react to Rythm bot requests like this:
#!p https://www.youtube.com/watch?v=Wuh_FcfCTfw
# where we have !p and then a youtube link

client = commands.Bot(command_prefix="!")
client.remove_command("help")
distributions = None

api_key = None


@client.event
async def on_ready():
    global distributions, api_key
    distributions = init_lang_distributions()
    print("Starting shitpost detector!")


# meant to be triggered at the same time as Rythm
@client.command()
async def p(ctx, *args):
    global distributions, api_key
    name = str(ctx.message.author.id)
    youtube_url = args[0]

    await ctx.send(
        "class is probably {}".format(
            predict_given_youtube_url(youtube_url, distributions, api_key)
        )
    )


""" basic terminal launch code """

if __name__ == "__main__":
    dotenv_path = join(dirname(__file__), ".env")
    load_dotenv(dotenv_path)

    api_key = os.getenv("YOUTUBE_API_KEY")
    token = os.getenv("DISCORD_TOKEN")

    client.run(token)
