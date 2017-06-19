require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
    test "layout links" do
        get root_path
        assert_template 'hello/index'
        assert_select "a[href=?]", root_path

        #TODO
        #assert_select "a[href=?]", bio_path
        #assert_select "a[href=?]", blog_path

        assert_select "a[href=?]", resume_path
        assert_select "a[href=?]", contact_path
      end
end
