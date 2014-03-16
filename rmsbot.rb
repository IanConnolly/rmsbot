require 'cinch'


bot = Cinch::Bot.new do

  configure do |c|
    c.server = "irc.netsoc.tcd.ie"
    c.nick = "rmsbot"
    c.channels = ["#rmsbot", "#tcd2015"]
  end

  on :message, /(?i)(?<!gnu.)linux(?!.*kernel)/  do |m|
    m.reply("Let me interject for a moment there, " + m.user.user)
    m.reply("What you're referring to as Linux, is in fact, GNU/Linux, "\
            "or as I've recently taken to calling it, GNU plus Linux. "\
            "Linux is not an operating system unto itself, but rather another "\
            "free component of a fully functioning GNU system made useful by "\
            "the GNU corelibs, shell utilities and vital system components "\
            "comprising a full OS as defined by POSIX.")
  end

  on :message, /(?i)gnu[\+|\/]linux/ do |m|
    m.reply("I approve of your phrasing, " + m.user.user)
  end

  on :message, /(?i)(?<!gnu.)linux(?=.*kernel)/ do |m|
    m.reply("The Linux Kernel is great and all, but have you heard of "\
            "GNU HURD?")
  end

  on :message, /(?i)parrot/ do |m|
    m.reply("To acquire a parrot is a major decision: it is likely to "\
            "outlive you. If you don't know how to treat the parrot, "\
            "it could be emotionally scarred and spend many decades "\
            "feeling frightened and unhappy")
  end

end

bot.start
