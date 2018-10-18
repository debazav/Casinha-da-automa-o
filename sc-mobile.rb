find_element(:xpath, "//android.widget.LinearLayout")
find_element(:id, "frag_new_record_licensing_btn_next").click
Appium::TouchAction.new.tap(x: 0.50, y: 0.40).perform
