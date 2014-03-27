Tasks

Creating Data Objects
+ data
+ dataWithBytes:length:
+ dataWithBytesNoCopy:length:
+ dataWithBytesNoCopy:length:freeWhenDone:
+ dataWithContentsOfFile:
+ dataWithContentsOfFile:options:error:
+ dataWithContentsOfURL:
+ dataWithContentsOfURL:options:error:
+ dataWithData:
– initWithBase64EncodedData:options:
– initWithBase64EncodedString:options:
– initWithBytes:length:
– initWithBytesNoCopy:length:
– initWithBytesNoCopy:length:deallocator:
– initWithBytesNoCopy:length:freeWhenDone:
– initWithContentsOfFile:
– initWithContentsOfFile:options:error:
– initWithContentsOfURL:
– initWithContentsOfURL:options:error:
– initWithData:
– initWithBase64Encoding: Deprecated in iOS 7.0
+ dataWithContentsOfMappedFile: Deprecated in iOS 5.0
– initWithContentsOfMappedFile: Deprecated in iOS 5.0

Accessing Data
– bytes
– description
– enumerateByteRangesUsingBlock:
– getBytes:length:
– getBytes:range:
– subdataWithRange:
– rangeOfData:options:range:
– getBytes: Deprecated in iOS 4.0

Base-64 Encoding
– base64EncodedDataWithOptions:
– base64EncodedStringWithOptions:
– base64Encoding Deprecated in iOS 7.0

Testing Data
– isEqualToData:
– length

Storing Data
– writeToFile:atomically:
– writeToFile:options:error:
– writeToURL:atomically:
– writeToURL:options:error:
