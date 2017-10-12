module ApplicationHelper
    # Takes 10000 cents and output is as $100.00
    def format_money(cents)
        money = Money.new(cents, "AUD")
        money.format
    end

    def format_money_for_country(cents, country)
        money = Money.new(cents, country.currency.iso_code)
        money.format
    end
end
