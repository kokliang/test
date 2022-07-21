require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
Kernel.at_exit do
    IRB.conf[:AT_EXIT].each do |i|
        i.call
    end
end
