require 'benchmark'

TIMES=1_000_000

puts(":#0 " + Benchmark.measure{TIMES.times{/:\/\// =~ "/shop/viewCategory.shtml?category=DOGS"}}.to_s)
puts(":#1 " + Benchmark.measure{TIMES.times{/^\w+\:\/\/[^\/]+(\/.*|$)$/ =~ "/shop/viewCategory.shtml?category=DOGS"}}.to_s)
puts(":#2 " + Benchmark.measure{TIMES.times{/\A\/?\Z/ =~ "/shop/viewCategory.shtml"}}.to_s)
puts(":#3 " + Benchmark.measure{TIMES.times{/\A\/shop\/signonForm\.shtml\/?\Z/ =~ "/shop/viewCategory.shtml"}}.to_s)
puts(":#4 " + Benchmark.measure{TIMES.times{/\A\/shop\/newAccountForm\.shtml\/?\Z/ =~ "/shop/viewCategory.shtml"}}.to_s)
puts(":#5 " + Benchmark.measure{TIMES.times{/\A\/shop\/newAccount\.shtml\/?\Z/ =~ "/shop/viewCategory.shtml"}}.to_s)
puts(":#6 " + Benchmark.measure{TIMES.times{/\A\/shop\/viewCart\.shtml\/?\Z/ =~ "/shop/viewCategory.shtml"}}.to_s)
puts(":#7 " + Benchmark.measure{TIMES.times{/\A\/shop\/index\.shtml\/?\Z/ =~ "/shop/viewCategory.shtml"}}.to_s)
puts(":#8 " + Benchmark.measure{TIMES.times{/\A\/shop\/viewCategory\.shtml\/?\Z/ =~ "/shop/viewCategory.shtml"}}.to_s)
puts(":#9 " + Benchmark.measure{TIMES.times{/\A(?:::)?([A-Z]\w*(?:::[A-Z]\w*)*)\z/ =~ "CategoriesController"}}.to_s)
puts(":#10 " + Benchmark.measure{TIMES.times{/\Ainsert/i =~ "SELECT * FROM sessions WHERE (session_id = '1b341ffe23b5298676d535fcabd3d0d7')  LIMIT 1"}}.to_s)
puts(":#11 " + Benchmark.measure{TIMES.times{/\A\(?\s*(select|show)/i =~ "SELECT * FROM sessions WHERE (session_id = '1b341ffe23b5298676d535fcabd3d0d7')  LIMIT 1"}}.to_s)
puts(":#12 " + Benchmark.measure{TIMES.times{/.*?\n/m =~ "1b341ffe23b5298676d535fcabd3d0d7"}}.to_s)
puts(":#13 " + Benchmark.measure{TIMES.times{/^find_(all_by|by)_([_a-zA-Z]\w*)$/ =~ "find_by_string_id"}}.to_s)
puts(":#14 " + Benchmark.measure{TIMES.times{/\Ainsert/i =~ "SELECT * FROM categories WHERE (categories.`string_id` = 'DOGS')  LIMIT 1"}}.to_s)
puts(":#15 " + Benchmark.measure{TIMES.times{/\A\(?\s*(select|show)/i =~ "SELECT * FROM categories WHERE (categories.`string_id` = 'DOGS')  LIMIT 1"}}.to_s)
puts(":#16 " + Benchmark.measure{TIMES.times{/^find_(all_by|by)_([_a-zA-Z]\w*)$/ =~ "find_by_category_id"}}.to_s)
puts(":#17 " + Benchmark.measure{TIMES.times{/(=|\?|_before_type_cast)$/ =~ "map"}}.to_s)
puts(":#18 " + Benchmark.measure{TIMES.times{/(=|\?|_before_type_cast)$/ =~ "quoted_id"}}.to_s)
puts(":#19 " + Benchmark.measure{TIMES.times{/\Ainsert/i =~ "SELECT count(*) AS count_all FROM products WHERE (products.`category_id` = 2)"}}.to_s)
puts(":#20 " + Benchmark.measure{TIMES.times{/\A\(?\s*(select|show)/i =~ "SELECT count(*) AS count_all FROM products WHERE (products.`category_id` = 2)"}}.to_s)
puts(":#21 " + Benchmark.measure{TIMES.times{/^find_(all_by|by)_([_a-zA-Z]\w*)$/ =~ "find_all_by_category_id"}}.to_s)
puts(":#22 " + Benchmark.measure{TIMES.times{/(=|\?|_before_type_cast)$/ =~ "map"}}.to_s)
puts(":#23 " + Benchmark.measure{TIMES.times{/(=|\?|_before_type_cast)$/ =~ "quoted_id"}}.to_s)
puts(":#24 " + Benchmark.measure{TIMES.times{/\Ainsert/i =~ "SELECT * FROM products WHERE (products.`category_id` = 2)  LIMIT 0, 4"}}.to_s)
puts(":#25 " + Benchmark.measure{TIMES.times{/\A\(?\s*(select|show)/i =~ "SELECT * FROM products WHERE (products.`category_id` = 2)  LIMIT 0, 4"}}.to_s)
puts(":#26 " + Benchmark.measure{TIMES.times{/\.rjs$/ =~ "categories/show.rhtml"}}.to_s)
puts(":#27 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "petstore.css"}}.to_s)
puts(":#28 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "logo-topbar.gif"}}.to_s)
puts(":#29 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "cart.gif"}}.to_s)
puts(":#30 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "separator.gif"}}.to_s)
puts(":#31 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "sign-in.gif"}}.to_s)
puts(":#32 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "separator.gif"}}.to_s)
puts(":#33 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "help.gif"}}.to_s)
puts(":#34 " + Benchmark.measure{TIMES.times{/^get$/i =~ ""}}.to_s)
puts(":#35 " + Benchmark.measure{TIMES.times{/^post$/i =~ ""}}.to_s)
puts(":#36 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "search.gif"}}.to_s)
puts(":#37 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "sm_fish.gif"}}.to_s)
puts(":#38 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "sm_dogs.gif"}}.to_s)
puts(":#39 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "sm_cats.gif"}}.to_s)
puts(":#40 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "sm_reptiles.gif"}}.to_s)
puts(":#41 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "sm_birds.gif"}}.to_s)
puts(":#42 " + Benchmark.measure{TIMES.times{/^[-a-z]+:\/\// =~ "separator.gif"}}.to_s)
puts(":#43 " + Benchmark.measure{TIMES.times{/^[^:]+/ =~ "www.example.com"}}.to_s)
puts(":#44 " + Benchmark.measure{TIMES.times{/^\w+\:\/\/[^\/]+(\/.*|$)$/ =~ "/shop/viewCategory.shtml?category=DOGS"}}.to_s)
puts(":#45 " + Benchmark.measure{TIMES.times{/(=|\?|_before_type_cast)$/ =~ "updated_on"}}.to_s)
puts(":#46 " + Benchmark.measure{TIMES.times{/(=|\?|_before_type_cast)$/ =~ "lock_version"}}.to_s)
puts(":#47 " + Benchmark.measure{TIMES.times{/\Ainsert/i =~ "UPDATE sessions SET `data` = 'BAh7BiIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNo\\nSGFzaHsABjoKQHVzZWR7AA==\\n', `session_id` = '1b341ffe23b5298676d535fcabd3d0d7', `updated_at` = '2007-10-12 14:06:58' WHERE `id` = 22"}}.to_s)
puts(":#48 " + Benchmark.measure{TIMES.times{/\A\(?\s*(select|show)/i =~ "UPDATE sessions SET `data` = 'BAh7BiIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNo\\nSGFzaHsABjoKQHVzZWR7AA==\\n', `session_id` = '1b341ffe23b5298676d535fcabd3d0d7', `updated_at` = '2007-10-12 14:06:58' WHERE `id` = 22"}}.to_s)
puts(":#49 " + Benchmark.measure{TIMES.times{/.*?\n/m =~ "Content-Type: text/html; charset=utf-8\r\nSet-Cookie: _petstore_session_id=1b341ffe23b5298676d535fcabd3d0d7; path=/\r\nContent-Length: 3698\r\nCache-Control: no-cache\r\nStatus: 200 OK"}}.to_s)
puts(":#50 " + Benchmark.measure{TIMES.times{/^(.*?)=(.*?);/ =~ "_petstore_session_id=1b341ffe23b5298676d535fcabd3d0d7; path=/"}}.to_s)
