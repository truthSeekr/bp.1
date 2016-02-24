require 'test_helper'

class ZgloszeniaControllerTest < ActionController::TestCase
  setup do
    @zgloszenium = zgloszenia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zgloszenia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zgloszenium" do
    assert_difference('Zgloszenium.count') do
      post :create, zgloszenium: { adres: @zgloszenium.adres, data_urodzenia: @zgloszenium.data_urodzenia, email: @zgloszenium.email, imie: @zgloszenium.imie, kurs_id: @zgloszenium.kurs_id, miasto: @zgloszenium.miasto, nazwisko: @zgloszenium.nazwisko, oplacony: @zgloszenium.oplacony, telefon: @zgloszenium.telefon, wiadomosc: @zgloszenium.wiadomosc, zaliczka: @zgloszenium.zaliczka }
    end

    assert_redirected_to zgloszenium_path(assigns(:zgloszenium))
  end

  test "should show zgloszenium" do
    get :show, id: @zgloszenium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zgloszenium
    assert_response :success
  end

  test "should update zgloszenium" do
    patch :update, id: @zgloszenium, zgloszenium: { adres: @zgloszenium.adres, data_urodzenia: @zgloszenium.data_urodzenia, email: @zgloszenium.email, imie: @zgloszenium.imie, kurs_id: @zgloszenium.kurs_id, miasto: @zgloszenium.miasto, nazwisko: @zgloszenium.nazwisko, oplacony: @zgloszenium.oplacony, telefon: @zgloszenium.telefon, wiadomosc: @zgloszenium.wiadomosc, zaliczka: @zgloszenium.zaliczka }
    assert_redirected_to zgloszenium_path(assigns(:zgloszenium))
  end

  test "should destroy zgloszenium" do
    assert_difference('Zgloszenium.count', -1) do
      delete :destroy, id: @zgloszenium
    end

    assert_redirected_to zgloszenia_path
  end
end
