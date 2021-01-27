# Tester

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

# Exit handler testing

I've added a route for /api - it just sends back "1". You can then set up a loop pulling the endpoint like this:

while true ; do curl localhost:4000/api  ; done

With the server running and the request loop running, send a SIGTERM. What I get is no requests accepted, no output from curl. Phoenix log shows the SIGTERM received and the exit handler working - but no new requests coming in, even though the Phoenix Endpoint hasn't been shut down.

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
