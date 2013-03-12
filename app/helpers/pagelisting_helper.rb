module PagelistingHelper
  
  def msg_body(msg)
    if msg.length > 140
      msg[0, 140]+"..."
    else
      msg
    end
  end

end
