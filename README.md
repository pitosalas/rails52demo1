# README

This is a Rails 5.2 Application written to showcase and demonstrate various Rails features, most of which are new in Rails 5.x.

* Stimulus - A javascript notification and updating package, light weight and easy to use.

* ActionCable - Rails interface to Web Sockets and Push processing.

* Credentials - A single encryption key to manage all the other secret credentials (typically API keys) so that they do not end up on Github

* Active Job - A Rails interface to background processing

* Webpack - A more popular and more general alternative to Rails for automatic compilation of js and css and related assets. **NOT USED** In my experience for our purposes, it's overkill.

## Recomendations

Create a file ~/railsrc containing default rails options. Mine includes

```
--database=postgresql
--skip-coffee
```

* It's much easier if you use postrgresql on both client and server. So tell Rails not to use the default database.

* .coffee is for cofee script, which is a Rails specific js variant. With all the languages we already have to learn, I think it's better to leave that out and ask Rails to use just regular javascript.

## Action Cable

* Check out [Drifting RUby about Action Cable]. It's an excellent and consise intro to the ideas.(https://www.driftingruby.com/episodes/actioncable-part-1-configuration-and-basics)

* We will use it to push results of completed translation jobs. 

* We will implement this first in the _translation.html.erb partial, so that it goes from "no translation" to the result, automatically as soon as the job completes.