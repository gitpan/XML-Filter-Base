use Test;
BEGIN { plan tests => 2 }
END { ok($loaded) }
use XML::Filter::Base;
$loaded = 1;
ok(1);
