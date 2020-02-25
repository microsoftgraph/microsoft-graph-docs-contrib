---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString: @"/communications/calls/logTeleconferenceDeviceQuality"]]];
[urlRequest setHTTPMethod: @"POST"];
[urlRequest setValue: @"TestUserAgent" forHTTPHeaderField: @"User-Agent"];
[urlRequest setValue: @"Bearer <Token>" forHTTPHeaderField: @"Authorization"];
[urlRequest setValue: @"application/json" forHTTPHeaderField: @"Content-Type"];

MSGraphTeleconferenceDeviceQuality *quality = [[MSGraphTeleconferenceDeviceQuality alloc] init];  
[quality setCallChainId: @"0622673d-9f69-49b3-9d4f-5ec64f42ecce"];
[quality setParticipantId: @"ea078406-b5d4-4d3c-b85e-90103dcec7f6"];
[quality setMediaLegId: @"bd9ee398-4b9d-42c7-8b8d-4e8efad9435f"];
[quality setDeviceName: @"TestAgent"];
[quality setDeviceDescription: @"TestDescription"];

MSGraphTeleconferenceDeviceAudioQuality *audio = [[MSGraphTeleconferenceDeviceAudioQuality alloc] init];  
[audio setChannelIndex: 1];
[audio setMediaDuration: @"PT20M"];
[audio setNetworkLinkSpeedInBytes: 13000];
[audio setLocalIPAddress: @"127.0.0.1"];
[audio setLocalPort: 6300];
[audio setRemoteIPAddress: @"127.0.0.2"];
[audio setRemotePort: 6301];
[audio setInboundPackets: 5500];
[audio setOutboundPackets: 5400];
[audio setAverageInboundPacketLossRateInPercentage: 0.01];
[audio setAverageOutboundPacketLossRateInPercentage: 0.02];
[audio setMaximumInboundPacketLossRateInPercentage: 0.05];
[audio setMaximumOutboundPacketLossRateInPercentage: 0.06];
[audio setAverageInboundRoundTripDelay: @"PT0.03S"];
[audio setAverageOutboundRoundTripDelay: @"PT0.04S"];
[audio setMaximumInboundRoundTripDelay: @"PT0.13S"];
[audio setMaximumOutboundRoundTripDelay: @"PT0.14S"];
[audio setAverageInboundJitter: @"PT0.01S"];
[audio setAverageOutboundJitter: @"PT0.015S"];
[audio setMaximumInboundJitter: @"PT0.023S"];
[audio setMaximumOutboundJitter: @"PT0.024S"];

MSGraphTeleconferenceDeviceVideoQuality *video = [[MSGraphTeleconferenceDeviceVideoQuality alloc] init];  
[video setChannelIndex: 1];
[video setMediaDuration: @"PT20M"];
[video setNetworkLinkSpeedInBytes: 13000];
[video setLocalIPAddress: @"127.0.0.1"];
[video setLocalPort: 6300];
[video setRemoteIPAddress: @"127.0.0.2"];
[video setRemotePort: 6301];
[video setInboundPackets: 5500];
[video setOutboundPackets: 5400];
[video setAverageInboundPacketLossRateInPercentage: 0.01];
[video setAaverageOutboundPacketLossRateInPercentage: 0.02];
[video setMaximumInboundPacketLossRateInPercentage: 0.05];
[video setMaximumOutboundPacketLossRateInPercentage: 0.06];
[video setAverageInboundRoundTripDelay: @"PT0.03S"];
[video setAverageOutboundRoundTripDelay: @"PT0.04S"];
[video setMaximumInboundRoundTripDelay: @"PT0.13S"];
[video setMaximumOutboundRoundTripDelay: @"PT0.14S"];
[video setAverageInboundJitter: @"PT0.01S"];
[video setAverageOutboundJitter: @"PT0.015S"];
[video setMaximumInboundJitter: @"PT0.023S"];
[video setMaximumOutboundJitter: @"PT0.024S"];

MSGraphTeleconferenceDeviceScreenSharingQuality *screenSharing = [[MSGraphTeleconferenceDeviceScreenSharingQuality alloc] init];  
[screenSharing setChannelIndex: 1];
[screenSharing setMediaDuration: @"PT20M"];
[screenSharing setNetworkLinkSpeedInBytes: 13000];
[screenSharing setLocalIPAddress: @"127.0.0.1"];
[screenSharing setLocalPort: 6300];
[screenSharing setRemoteIPAddress: @"127.0.0.2"];
[screenSharing setRemotePort: 6301];
[screenSharing setInboundPackets: 5500];
[screenSharing setOutboundPackets: 5400];
[screenSharing setAverageInboundPacketLossRateInPercentage: 0.01];
[screenSharing setAverageOutboundPacketLossRateInPercentage: 0.02];
[screenSharing setMaximumInboundPacketLossRateInPercentage: 0.05];
[screenSharing setMaximumOutboundPacketLossRateInPercentage: 0.06];
[screenSharing setAverageInboundRoundTripDelay: @"PT0.03S"];
[screenSharing setAverageOutboundRoundTripDelay: @"PT0.04S"];
[screenSharing setMaximumInboundRoundTripDelay: @"PT0.13S"];
[screenSharing setMaximumOutboundRoundTripDelay: @"PT0.14S"];
[screenSharing setAverageInboundJitter: @"PT0.01S"];
[screenSharing setAverageOutboundJitter: @"PT0.015S"];
[screenSharing setMaximumInboundJitter: @"PT0.023S"];
[screenSharing setMaximumOutboundJitter: @"PT0.024S"];
		
NSMutableArray *requestedMediaQualityList = [[NSMutableArray alloc] init];
[requestedMediaQualityList addObject: audio];
[requestedMediaQualityList addObject: video];
[requestedMediaQualityList addObject: screenSharing];
[quality setMediaQualityList: requestedMediaQualityList];

NSData *qualityData = [quality getSerializedDataWithError:&error];
[urlRequest setHTTPBody:qualityData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```