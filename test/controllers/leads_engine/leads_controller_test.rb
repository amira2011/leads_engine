require "test_helper"

module LeadsEngine
  class LeadsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @lead = leads_engine_leads(:one)
    end

    test "should get index" do
      get leads_url
      assert_response :success
    end

    test "should get new" do
      get new_lead_url
      assert_response :success
    end

    test "should create lead" do
      assert_difference("Lead.count") do
        post leads_url, params: { lead: { email: @lead.email, name: @lead.name } }
      end

      assert_redirected_to lead_url(Lead.last)
    end

    test "should show lead" do
      get lead_url(@lead)
      assert_response :success
    end

    test "should get edit" do
      get edit_lead_url(@lead)
      assert_response :success
    end

    test "should update lead" do
      patch lead_url(@lead), params: { lead: { email: @lead.email, name: @lead.name } }
      assert_redirected_to lead_url(@lead)
    end

    test "should destroy lead" do
      assert_difference("Lead.count", -1) do
        delete lead_url(@lead)
      end

      assert_redirected_to leads_url
    end
  end
end
