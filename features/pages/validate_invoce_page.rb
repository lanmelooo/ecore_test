class ValidationInvocePage < SitePrism::Page

    element :link_invoce_details, :xpath, '/html/body/section/div/div[2]/div[5]/a'

    def click_invoce_details
        link_invoce_details.click
    end

    def information_validation
        hotelname = page.has_text? "Rendezvous Hotel"
        raise "Text not found Rendezvous Hotel" if hotelname == false

        invoicedate = page.has_text? "14/01/2018"
        raise "Text not found 14/01/2018" if invoicedate == false
        
        duedate = page.has_text? "15/01/2018"
        raise "Text not found 15/01/2018" if duedate == false

        invoicenumber = page.has_text? "110"
        raise "Text not found 110" if invoicenumber == false

        new_window = nil
        Capybara.using_wait_time(10) do
            new_window = page.windows.find { |window| window != page.current_window }
        end

        if new_window
            page.switch_to_window(new_window)
        else
            raise 'Nova janela não foi aberta'
        end

        booking_code = page.has_text? "0875"
        raise "Text not found 0875" if booking_code == false

        customer_details_name = page.has_text? "JOHNY SMITH"
        raise "Text not found JOHNY SMITH" if customer_details_name == false

        customer_details_address = page.has_text? "R2, AVENUE DU MAROC"
        raise "Text not found R2, AVENUE DU MAROC" if customer_details_address == false

        customer_details_number = page.has_text? "123456"
        raise "Text not found  123456" if customer_details_number == false

        room = page.has_text? "Superior Double"
        raise "Text not found Superior Double" if room == false

        check_in = page.has_text? "14/01/2018"
        raise "Text not found 14/01/2018" if check_in == false

        check_out = page.has_text? "15/01/2018"
        raise "Text not found 15/01/2018" if check_out == false

        total_stay_count = page.has_text? "1"
        raise "Text not found 1" if total_stay_count == false

        total_stay_amount = page.has_text? "$150"
        raise "Text not found $150" if total_stay_amount == false

        deposit_nowt = page.has_text? "USD $20.90"
        raise "Text not found USD $20.90" if deposit_nowt == false


        tax_vat= page.has_text? "USD $19"
        raise "Text not found USD $19" if tax_vat == false

        total_amount = page.has_text? "USD $209"
        raise "Text not found USD $209" if total_amount == false
    end
end