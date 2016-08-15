require 'minitest/autorun'
require 'invoice_translations'

class TestInvoiceTranslations < Minitest::Test
  def test_available_locales
    assert InvoiceTranslations.available_locales.include?('de')
  end

  def test_to_h
    assert_equal 'Rechnung', InvoiceTranslations.to_h['de']['invoice']
  end
end
