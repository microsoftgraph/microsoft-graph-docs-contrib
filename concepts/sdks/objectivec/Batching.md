# [Batching](https://developer.microsoft.com/en-us/graph/docs/concepts/json_batching)

Batching is a way of combining multiple requests to resources in same/different workloads in a single HTTP request. This can be achieved by making a post call with those requests as a JSON payload to $batch endpoint.

### MSBatchRequestStep

To make batch request, native request objects needs to be clubbed with some `id` and `dependsOn[optional]` values. This class provides a mechanism to build such an object.

### MSBatchRequestContent

A component which eases the way of creating batch request payload. This class handles all the batch specific payload construction and stuffs, we just need to worry about individual requests.



### MSBatchResponseContent

A component to simplify the processing of batch responses by providing functionalities like getResponses, getResponseById.



**Update the profile photo and download the uploaded photo with batching - Making serial requests in which all individual requests depend on the previous individual request.**

```Objective-C
//Create a native request object
NSMutableURLRequest *photoUpdateUrlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"/me/photo/$value"]];
[photoUpdateUrlRequest setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
[photoUpdateUrlRequest setHTTPMethod:@"PUT"];
NSURL *fileURL = [NSURL URLWithString:[[NSBundle mainBundle] pathForResource:@"dummy" ofType:@".jpeg"]];
NSData *data = [NSData dataWithContentsOfFile:[fileURL absoluteString] options:kNilOptions error:nil];
[photoUpdateUrlRequest setHTTPBody:data];

//Create a batch step from that
MSBatchRequestStep *photoUpdateStep = [[MSBatchRequestStep alloc] initWithId:@"1" request:photoUpdateUrlRequest andDependsOn:nil];

//Create another native request object
NSMutableURLRequest *photoDownloadUrlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"/me/photo/$value"]];

//Create a batch step from that
MSBatchRequestStep *photoDownloadStep = [[MSBatchRequestStep alloc] initWithId:@"2" request:photoDownloadUrlRequest andDependsOn:@[@"1"]];

//Create batch request content using two batch request steps that we just created
NSError *batchContentError;
MSBatchRequestContent *batchRequestContent = [[MSBatchRequestContent alloc] initWithRequests:@[photoUpdateStep,photoDownloadStep] error:&batchContentError];
if(batchContentError) {
NSLog(@"Got error %@",batchContentError.localizedDescription);
return;
}

//Get batch content
NSMutableDictionary *batchContentDictionary = [batchRequestContent getBatchRequestContent];

//Create native batch request
NSMutableURLRequest *batchRequest = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/$batch"]]];
[batchRequest setHTTPMethod:@"POST"];
[batchRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"
];

//Add batch content as request body
NSData *bodyData = [NSJSONSerialization dataWithJSONObject:batchContentDictionary options:kNilOptions error:nil];
[batchRequest setHTTPBody:bodyData];

//Use http client from core library to create a data task and execute
MSURLSessionDataTask *dataTask = [httpClient dataTaskWithRequest:batchRequest completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
if(!error){
//Create batch response content using raw data
MSBatchResponseContent *responseContent =[[MSBatchResponseContent alloc] initWithBatchResponseData:data options:kNilOptions error:nil];

//Get a response for individial request by passing in the request id.
NSDictionary *responseDict = [responseContent getResponseById:@"1"];
NSLog(@"%@",responseDict);

//Get all responses
NSLog(@"%@",[responseContent getResponses]);
}
}];
[dataTask execute];
```



**GET content from `/me` and `/me/drive` endpoints - Making parallel requests in which no individual request states a dependency in the `dependsOn` property.**


```Objective-C 

//Create a native request object
NSMutableURLRequest *meUrlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"/me"]];

//Create a batch step from that
MSBatchRequestStep *meStep = [[MSBatchRequestStep alloc] initWithId:@"1" request:meUrlRequest andDependsOn:nil];

//Create another native request object
NSMutableURLRequest *driveUrlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"/me/drive"]];

//Create a batch step from that
MSBatchRequestStep *driveStep = [[MSBatchRequestStep alloc] initWithId:@"2" request:driveUrlRequest andDependsOn:nil];


//Create batch request content using two batch request steps that we just created
NSError *batchContentError;
MSBatchRequestContent *batchRequestContent = [[MSBatchRequestContent alloc] initWithRequests:@[meStep,driveStep] error:&batchContentError];
if(batchContentError) {
NSLog(@"Got error %@",batchContentError.localizedDescription);
return;
}

//Get batch content
NSMutableDictionary *batchContentDictionary = [batchRequestContent getBatchRequestContent];

//Create native batch request
NSMutableURLRequest *batchRequest = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/$batch"]]];
[batchRequest setHTTPMethod:@"POST"];
[batchRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"
];

//Add batch content as request body
NSData *bodyData = [NSJSONSerialization dataWithJSONObject:batchContentDictionary options:kNilOptions error:nil];
[batchRequest setHTTPBody:bodyData];

//Use http client from core library to create a data task and execute
MSURLSessionDataTask *dataTask = [httpClient dataTaskWithRequest:batchRequest completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {

if(!error){
NSLog(@"got batch response success");
//Create batch response content using raw data
MSBatchResponseContent *responseContent =[[MSBatchResponseContent alloc] initWithBatchResponseData:data options:kNilOptions error:nil];

//Get a response for individial request by passing in the request id.
NSDictionary *responseDict = [responseContent getResponseById:@"1"];
NSLog(@"%@",responseDict);

//Get all responses
NSLog(@"%@",[responseContent getResponses]);
}else{
NSLog(@"got batch response Failure %@",error.localizedDescription);
}
}];
[dataTask execute];

```



**Updating the photo,  then downloading the updated photo and getting the details of it  - Making batch request with all other request depend on one request**



```Objective-C

//Create a native request object
NSMutableURLRequest *photoUpdateUrlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"/me/photo/$value"]];
[photoUpdateUrlRequest setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
[photoUpdateUrlRequest setHTTPMethod:@"PUT"];
NSURL *fileURL = [NSURL URLWithString:[[NSBundle mainBundle] pathForResource:@"dummy" ofType:@".jpeg"]];
NSData *data = [NSData dataWithContentsOfFile:[fileURL absoluteString] options:kNilOptions error:nil];
[photoUpdateUrlRequest setHTTPBody:data];

//Create a batch step from that
MSBatchRequestStep *photoUpdateStep = [[MSBatchRequestStep alloc] initWithId:@"1" request:photoUpdateUrlRequest andDependsOn:nil];

//Create another native request object dependent on previous step
NSMutableURLRequest *photoDownloadUrlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"/me/photo/$value"]];

//Create a batch step from that
MSBatchRequestStep *photoDownloadStep = [[MSBatchRequestStep alloc] initWithId:@"2" request:photoDownloadUrlRequest andDependsOn:@[@"1"]];

//Create another native request object dependent on first step
NSMutableURLRequest *photoDetailsUrlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"/me/photo"]];

//Create a batch step from that
MSBatchRequestStep *photoDetailsStep = [[MSBatchRequestStep alloc] initWithId:@"3" request:photoDetailsUrlRequest andDependsOn:@[@"1"]];
//Create batch request content using two batch request steps that we just created
NSError *batchContentError;
MSBatchRequestContent *batchRequestContent = [[MSBatchRequestContent alloc] initWithRequests:@[photoUpdateStep,photoDownloadStep,photoDetailsStep] error:&batchContentError];
if(batchContentError) {
NSLog(@"Got error %@",batchContentError.localizedDescription);
return;
}

//Get batch content
NSMutableDictionary *batchContentDictionary = [batchRequestContent getBatchRequestContent];

//Create native batch request
NSMutableURLRequest *batchRequest = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/$batch"]]];
[batchRequest setHTTPMethod:@"POST"];
[batchRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"
];

//Add batch content as request body
NSData *bodyData = [NSJSONSerialization dataWithJSONObject:batchContentDictionary options:kNilOptions error:nil];
[batchRequest setHTTPBody:bodyData];

//Use http client from core library to create a data task and execute
MSURLSessionDataTask *dataTask = [httpClient dataTaskWithRequest:batchRequest completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
if(!error){
//Create batch response content using raw data
MSBatchResponseContent *responseContent =[[MSBatchResponseContent alloc] initWithBatchResponseData:data options:kNilOptions error:nil];

//Get a response for individial request by passing in the request id.
NSDictionary *responseDict = [responseContent getResponseById:@"1"];
NSLog(@"%@",responseDict);

//Get all responses
NSLog(@"%@",[responseContent getResponses]);
}
}];
[dataTask execute];
```



### Constraints

Refer these [JSON Batching](https://developer.microsoft.com/en-us/graph/docs/concepts/json_batching), [Known Issues](https://developer.microsoft.com/en-us/graph/docs/concepts/known_issues#json-batching) documents for current constraints in the batching.
