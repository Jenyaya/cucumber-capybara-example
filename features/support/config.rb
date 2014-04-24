require 'capybara'

# Tweak Browser not to close on exit (if configured)
class Capybara::Selenium::Driver

  def quit
    if @browser
      @browser.quit
    end
  end

  def reset!
    # Use instance variable directly so we avoid starting the browser just to reset the session
    if @browser
      begin
        @browser.manage.delete_all_cookies
      rescue Selenium::WebDriver::Error::UnhandledError => e
        # delete_all_cookies fails when we've previously gone
        # to about:blank, so we rescue this error and do nothing
        # instead.
      end
    end
  end

end
