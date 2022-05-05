---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/bookingBusinesses/Contosolunchdelivery@contoso.onmicrosoft.com/getStaffAvailability"]]];
[urlRequest setHTTPMethod:@"GET"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSMutableArray *staffIdsList = [[NSMutableArray alloc] init];
[staffIdsList addObject: @"311a5454-08b2-4560-ba1c-f715e938cb79"];
payloadDictionary[@"staffIds"] = staffIdsList;

MSGraphDateTimeTimeZone *startDateTime = [[MSGraphDateTimeTimeZone alloc] init];
[startDateTime setDateTime:@"2022-01-25T00: 00: 00"];
[startDateTime setTimeZone:@"India Standard Time"];
payloadDictionary[@"startDateTime"] = startDateTime;

MSGraphDateTimeTimeZone *endDateTime = [[MSGraphDateTimeTimeZone alloc] init];
[endDateTime setDateTime:@"2022-01-26T17: 00: 00"];
[endDateTime setTimeZone:@"Pacific Standard Time"];
payloadDictionary[@"endDateTime"] = endDateTime;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		MSCollection *collection = [[MSCollection alloc] initWithData:data error:&jsonError];
		MSGraphStaffAvailabilityItem *staffAvailabilityItem = [[MSGraphStaffAvailabilityItem alloc] initWithDictionary:[[collection value] objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```