# POST to GET proxy

I made this to work around the fact that Insomnia doesn't support GraphQL APIs that work with GET queries. <https://github.com/Kong/insomnia/issues/1890>

## Instructions

- Clone the repo
- `bundle install`
- `ruby server.rb`
- If you're testing `https://website.com/api/graphql`, change that URL to `http://localhost:4567/api/graphql` in Insomnia and add the `X-Forward-To: https://website.com` in the request's headers

## Warning

Very vulnerable to SSRF. :)

