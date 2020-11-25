module LoansHelper
    def user_email(loan)
        loan.user.email
    end

    def book_title(loan)
        loan.book.title
    end

    def corrige_fecha(fecha)
        if fecha.nil?
            ''
        else
            fecha.strftime("%d-%m-%Y")               
        end
    end

    def limit_date(fecha)
        if fecha.nil?
            ''
        else
            (fecha+15).strftime("%d-%m-%Y")               
        end
    end

    def limit_date(fecha)
        if fecha.nil?
            ''
        else
            (fecha+15).strftime("%d-%m-%Y")               
        end
    end

    
end
