---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Communications.Calls.LogTeleconferenceDeviceQuality.LogTeleconferenceDeviceQualityPostRequestBody
{
	Quality = new TeleconferenceDeviceQuality
	{
		OdataType = "#microsoft.graph.teleconferenceDeviceQuality",
		CallChainId = Guid.Parse("0622673d-9f69-49b3-9d4f-5ec64f42ecce"),
		ParticipantId = Guid.Parse("ea078406-b5d4-4d3c-b85e-90103dcec7f6"),
		MediaLegId = Guid.Parse("bd9ee398-4b9d-42c7-8b8d-4e8efad9435f"),
		DeviceName = "TestAgent",
		DeviceDescription = "TestDescription",
		MediaQualityList = new List<TeleconferenceDeviceMediaQuality>
		{
			new TeleconferenceDeviceMediaQuality
			{
				OdataType = "#microsoft.graph.teleconferenceDeviceAudioQuality",
				ChannelIndex = 1,
				MediaDuration = TimeSpan.Parse("PT20M"),
				NetworkLinkSpeedInBytes = 13000L,
				LocalIPAddress = "127.0.0.1",
				LocalPort = 6300,
				RemoteIPAddress = "102.1.1.101",
				RemotePort = 6301,
				InboundPackets = 5500L,
				OutboundPackets = 5400L,
				AverageInboundPacketLossRateInPercentage = 0.01d,
				AverageOutboundPacketLossRateInPercentage = 0.02d,
				MaximumInboundPacketLossRateInPercentage = 0.05d,
				MaximumOutboundPacketLossRateInPercentage = 0.06d,
				AverageInboundRoundTripDelay = TimeSpan.Parse("PT0.03S"),
				AverageOutboundRoundTripDelay = TimeSpan.Parse("PT0.04S"),
				MaximumInboundRoundTripDelay = TimeSpan.Parse("PT0.13S"),
				MaximumOutboundRoundTripDelay = TimeSpan.Parse("PT0.14S"),
				AverageInboundJitter = TimeSpan.Parse("PT0.01S"),
				AverageOutboundJitter = TimeSpan.Parse("PT0.015S"),
				MaximumInboundJitter = TimeSpan.Parse("PT0.023S"),
				MaximumOutboundJitter = TimeSpan.Parse("PT0.024S"),
			},
			new TeleconferenceDeviceMediaQuality
			{
				OdataType = "#microsoft.graph.teleconferenceDeviceVideoQuality",
				ChannelIndex = 1,
				MediaDuration = TimeSpan.Parse("PT20M"),
				NetworkLinkSpeedInBytes = 13000L,
				LocalIPAddress = "127.0.0.1",
				LocalPort = 6300,
				RemoteIPAddress = "102.1.1.101",
				RemotePort = 6301,
				InboundPackets = 5500L,
				OutboundPackets = 5400L,
				AverageInboundPacketLossRateInPercentage = 0.01d,
				AverageOutboundPacketLossRateInPercentage = 0.02d,
				MaximumInboundPacketLossRateInPercentage = 0.05d,
				MaximumOutboundPacketLossRateInPercentage = 0.06d,
				AverageInboundRoundTripDelay = TimeSpan.Parse("PT0.03S"),
				AverageOutboundRoundTripDelay = TimeSpan.Parse("PT0.04S"),
				MaximumInboundRoundTripDelay = TimeSpan.Parse("PT0.13S"),
				MaximumOutboundRoundTripDelay = TimeSpan.Parse("PT0.14S"),
				AverageInboundJitter = TimeSpan.Parse("PT0.01S"),
				AverageOutboundJitter = TimeSpan.Parse("PT0.015S"),
				MaximumInboundJitter = TimeSpan.Parse("PT0.023S"),
				MaximumOutboundJitter = TimeSpan.Parse("PT0.024S"),
			},
			new TeleconferenceDeviceMediaQuality
			{
				OdataType = "#microsoft.graph.teleconferenceDeviceScreenSharingQuality",
				ChannelIndex = 1,
				MediaDuration = TimeSpan.Parse("PT20M"),
				NetworkLinkSpeedInBytes = 13000L,
				LocalIPAddress = "127.0.0.1",
				LocalPort = 6300,
				RemoteIPAddress = "102.1.1.101",
				RemotePort = 6301,
				InboundPackets = 5500L,
				OutboundPackets = 5400L,
				AverageInboundPacketLossRateInPercentage = 0.01d,
				AverageOutboundPacketLossRateInPercentage = 0.02d,
				MaximumInboundPacketLossRateInPercentage = 0.05d,
				MaximumOutboundPacketLossRateInPercentage = 0.06d,
				AverageInboundRoundTripDelay = TimeSpan.Parse("PT0.03S"),
				AverageOutboundRoundTripDelay = TimeSpan.Parse("PT0.04S"),
				MaximumInboundRoundTripDelay = TimeSpan.Parse("PT0.13S"),
				MaximumOutboundRoundTripDelay = TimeSpan.Parse("PT0.14S"),
				AverageInboundJitter = TimeSpan.Parse("PT0.01S"),
				AverageOutboundJitter = TimeSpan.Parse("PT0.015S"),
				MaximumInboundJitter = TimeSpan.Parse("PT0.023S"),
				MaximumOutboundJitter = TimeSpan.Parse("PT0.024S"),
			},
		},
	},
};
await graphClient.Communications.Calls.LogTeleconferenceDeviceQuality.PostAsync(requestBody);


```