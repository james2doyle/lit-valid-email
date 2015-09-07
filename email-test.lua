local validemail = require('./init')

local validList = {
  'prettyandsimple@example.com',
  'very.common@example.com',
  'a.little.lengthy.but.fine@dept.example.com',
  'disposable.style.email.with+symbol@example.com',
  'other.email-with-dash@example.com',
  '"much.more unusual"@example.com',
  '"very.unusual.@.unusual.com"@example.com',
  '"very.(),:;<>[]\".VERY.\"very@\\ \"very\".unusual"@strange.example.com',
  'admin@mailserver1',
  '#!$%&\'*+-/=?^_`{}|~@example.org',
  '"()<>[]:,;@\\\"!#$%&\'*+-/=?^_`{}| ~.a\"@example.org',
  '\" \"@example.org (space between the quotes)',
  'üñîçøðé@example.com',
  'üñîçøðé@üñîçøðé.com'
}

local invalidList = {
  'Abc.example.com',
  'A@b@c@example.com',
  'a\"b(c)d,e:f;g<h>i[jk]l@example.com',
  'just"not"right@example.com',
  'this is"not\allowed@example.com',
  'this still\"not\\allowed@example.com',
  'john.doe@example..com',
  'a valid address with a leading space',
  'a valid address with a trailing space',
  'abc'
}

print('The following should all be true')

for i = 1, #validList do
  print(validemail(validList[i]), validList[i])
end

print('The following should all be nil')

for i = 1, #invalidList do
  print(validemail(invalidList[i]), invalidList[i])
end