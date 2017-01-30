require('rspec')
require('jo_ken_po')

describe('String#jo_ken_po') do
	before :each do
		srand(2)
	end
	it("returns true if rock is the object and scissors is the argument") do
		expect("0".jo_ken_po()).to(eq(true))
	end
	it("returns false if paper is the object and scissors is the argument") do
		expect("1".jo_ken_po()).to(eq(false))
	end
end

describe('String#jo_ken_po') do
	before :each do
		srand(1)
	end
	it("returns false if rock is the object and paper is the argument") do
		expect("0".jo_ken_po()).to(eq(false))
	end
	it("returns true if scissors is the object and paper is the argument") do
		expect("2".jo_ken_po()).to(eq(true))
	end
end

describe('String#jo_ken_po') do
	before :each do
		srand(0)
	end
	it("returns true if paper is the object and rock is the argument") do
		expect("1".jo_ken_po()).to(eq(true))
	end
	it("returns false if scissors is the object and rock is the argument") do
		expect("2".jo_ken_po()).to(eq(false))
	end
end

describe('String#jo_ken_po') do
	before :each do
		srand(0)
	end
	it("returns a draw if rock is the object and the argument") do
		expect("0".jo_ken_po()).to(eq("draw"))
	end
end