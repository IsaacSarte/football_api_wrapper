module Football
    class Request

        BASE_URL = 'https://v3.football.api-sports.io'
        KEY = ENV['RAPID_KEY']
        RAPID_HOST = 'v3.football.api-sports.io'

        def self.call(http_method, endpoint)
            result = RestClient::Request.execute(
                method: http_method,
                url: "#{BASE_URL}#{endpoint}",
                headers: {'x-rapidapi-host' => "#{RAPID_HOST}", 'x-rapidapi-key' => "#{KEY}", 'Content-Type' => 'application/json'},
            )
            { code: result.code, status: 'Success', data: JSON.parse(result.body) }
        rescue RestClient::ExceptionWithResponse => error
            { code: error.http_code, status: error.message, data: Errors.map(error.http_code) }
        end

    end
end
