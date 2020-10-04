import os
import subprocess

import discord

# check https://discordpy.readthedocs.io/en/latest/api.html (I based this on my streak bot though)
from discord.ext import commands

from title_classifier import init_distributions, predict_given_youtube_url

# programmed to react to Rythm bot requests like this:
#!p https://www.youtube.com/watch?v=Wuh_FcfCTfw
# where we have !p and then a youtube link

client = commands.Bot(command_prefix="!")
client.remove_command("help")
distributions = None


@client.event
async def on_ready():
    global distributions
    distributions = init_distributions()
    print("Starting shitpost detector!")


# meant to be triggered at the same time as Rythm
@client.command()
async def p(ctx, *args):
    global distributions
    name = str(ctx.message.author.id)
    youtube_url = args[0]

    await ctx.send(
        "class is probably {}".format(
            predict_given_youtube_url(youtube_url, distributions)
        )
    )


""" basic terminal launch code """

if __name__ == "__main__":
    print("Input your discord token here to start here.")
    token = input()
    client.run(token)
