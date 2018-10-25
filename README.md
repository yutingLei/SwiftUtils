## About SiwftUtils

Extend convenience methods for swift

- SUColorUtils

	- **Method:** rgb(red, green, blue)  
	**Usage:**
		<ul>
		<li>UIColor.rgb(255, 0, 0) // is red</li>
		<li>UIColor.rgb(0, 255, 0) // is green</li>
		<li>UIColor.rgb(1, 0, 0) // also is red</li>
		<li>In this method, will process parameters with express `$0 > 1 ? $0 / 255.0 : $0`</li>
		</ul>
	
	* **Method:** rgba(red, green, blue, alpha)  
	**Usage:** refrence `rgb()` method
	
	* **Method:** init(hex: String)  
	**Usage:**  
	note: it doesn't matter that contains the character of `0x` or `0X`
		<ul>
		<li>UIColor.init("0xFFF") // is white</li>
		<li>UIColor.init("0XFFF") // also is white </li>
		<li>UIColor.init("FFF") // also is white </li>
		<li>UIColor.init("FFFF") // also is white, but includes with `r,g,b,a`</li>
		<li>UIColor.init("FFFFFF") // also is white, consist of `r,g,b` that each color contain 2 characters</li>
		<li>UIColor.init("FFFFFFFF") // also is white, consist of `r,g,b,a` that each color contain 2 characters</li>
		</ul>

- SUStringUtils

	* **Method:** subscript(CountableRange<Int>|CountableClosedRange<Int>)  
	**Usage:**  
	Statement one variable: `let oneString = "hello world!"`
		<ul>
		<li>let newString1 = oneString[0..<1] // newString1 => `h` </li>
		<li>let newString2 = oneString[0...1] // newString2 => `he` </li>
		</ul>
