# lit-valid-email

Check if an email address is valid.

### Sidenote

This took me a couple hours to craft. I finally got it returning the right results for each of the examples laid out in the [Wikipedia page](https://en.wikipedia.org/wiki/Email_address#Examples) for emails.

### Usage

This library has multiple returns

```lua
local validemail = require('valid-email')

local result, message = validemail('james2doyle@gmail.com')
```

If the email is valid, result will be `true` and the message will be `nil`. If it is invalid, the result will be `nil`, and the message will contain a reason for the validation failing.

### Results

Here are some test results for emails that should be valid or invalid:

*The following are supposed to all return `true`*

```
true  nil prettyandsimple@example.com
true  nil very.common@example.com
true  nil a.little.lengthy.but.fine@dept.example.com
true  nil disposable.style.email.with+symbol@example.com
true  nil other.email-with-dash@example.com
true  nil "much.more unusual"@example.com
true  nil "very.unusual.@.unusual.com"@example.com
true  nil "very.(),:;<>[]".VERY."very@\ "very".unusual"@strange.example.com
true  nil admin@mailserver1
true  nil #!$%&'*+-/=?^_`{}|~@example.org
true  nil "()<>[]:,;@\"!#$%&'*+-/=?^_`{}| ~.a"@example.org
true  nil " "@example.org (space between the quotes)
true  nil üñîçøðé@example.com
true  nil üñîçøðé@üñîçøðé.com
```
*The following are supposed to all return `nil`*

```
nil Email pattern test failed Abc.example.com
nil Invalid @ symbol usage in local part  A@b@c@example.com
nil Local name must be less than 64 characters  a.little.lengthy.but.fine.a.little.lengthy.but.fine.a.little.lengthy.but.fine@dept.example.com
nil Domain must be less than 253 characters solid-local-name@dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.dept.example.com
nil Invalid usage of quotes a"b(c)d,e:f;g<h>i[jk]l@example.com
nil Invalid usage of quotes just"not"right@example.com
nil Invalid usage of quotes this is"notllowed@example.com
nil Invalid usage of quotes this still"not\allowed@example.com
nil Too many periods in domain  john.doe@example..com
nil Email pattern test failed a valid address with a leading space
nil Email pattern test failed a valid address with a trailing space
nil Email pattern test failed abc
```

This is probably the most comprehensive email validator I have come across in Lua. Yay.