module ApplicationHelper
  def hidden_div_if(condition, attributes = {}, &block)
    logger.debug ("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
    if condition
      attributes["style"] = "display: none"
      logger.debug ("***********************************************")
      logger.debug attributes
      logger.debug ("***********************************************")
    else
      logger.debug ("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$")
      attributes["style"] = ""
    end
    content_tag("div", attributes, &block)
  end
end