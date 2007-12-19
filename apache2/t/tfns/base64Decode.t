### Empty
{
	type => "tfns",
	name => "base64Decode",
	input => "",
	output => "",
	ret => 0,
},

### Test values with varying lengths to check padding
{
	type => "tfns",
	name => "base64Decode",
	input => "VGVzdENhc2U=",
	output => "TestCase",
	ret => 1,
},
{
	type => "tfns",
	name => "base64Decode",
	input => "VGVzdENhc2Ux",
	output => "TestCase1",
	ret => 1,
},
{
	type => "tfns",
	name => "base64Decode",
	input => "VGVzdENhc2UxMg==",
	output => "TestCase12",
	ret => 1,
},


### Check with a NUL
{
	type => "tfns",
	name => "base64Decode",
	input => "VGVzdABDYXNl",
	output => "Test\0Case",
	ret => 1,
},

### Invalid
# What should happen here?  Probably just fail and leave alone.
{
	type => "tfns",
	name => "base64Decode",
	input => "VGVzdENhc2U=\0VGVzdENhc2U=",
	output => "VGVzdENhc2U=\0VGVzdENhc2U=",
	ret => 0,
},
