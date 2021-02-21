-- before or after set_header
location = /t {
   access_by_lua_block {
       local _ = ngx.var.http_host
       ngx.say('before set host:', ngx.var.http_host)
       ngx.req.set_header('Host', 'foobar')
       ngx.say('after set host: ', ngx.var.http_host)
   }
}



