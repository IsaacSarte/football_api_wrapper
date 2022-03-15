module Football
    class Errors

        def self.map(code)
            case code
            when 401
                return 'Unauthorized Request. Please Try Again!'
            when 404
                return 'Invalid Request!'
            else
                return 'Service Unavailable. Please Try Again!'
            end
        end

    end
end
