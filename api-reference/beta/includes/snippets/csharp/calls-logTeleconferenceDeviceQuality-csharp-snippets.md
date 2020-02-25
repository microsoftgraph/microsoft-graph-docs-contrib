---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );
Guid tenantId = Guid.NewGuid();
Guid scenarioId = Guid.NewGuid();
var sessionQoe = new TeleconferenceDeviceQuality()
{
    CallChainId = Guid.NewGuid(),
    ParticipantId = Guid.NewGuid(),
    MediaLegId = Guid.NewGuid(),
    DeviceName = "TestAgent",
    DeviceDescription = "TestDescription",
    MediaQualityList = new List<TeleconferenceDeviceMediaQuality>()
    {
        new TeleconferenceDeviceAudioQuality()
        {
            ChannelIndex = 1,
            MediaDuration = new Duration(TimeSpan.FromSeconds(1200)),
            NetworkLinkSpeedInBytes = 13000,
            LocalIPAddress = "127.0.0.1",
            LocalPort = 6300,
            RemoteIPAddress = "127.0.0.2",
            RemotePort = 6301,
            InboundPackets = 5500,
            OutboundPackets = 5400,
            AverageInboundPacketLossRateInPercentage = 0.01,
            AverageOutboundPacketLossRateInPercentage = 0.02,
            MaximumInboundPacketLossRateInPercentage = 0.05,
            MaximumOutboundPacketLossRateInPercentage = 0.06,
            AverageInboundRoundTripDelay = new Duration(TimeSpan.FromMilliseconds(30)),
            AverageOutboundRoundTripDelay = new Duration(TimeSpan.FromMilliseconds(40)),
            MaximumInboundRoundTripDelay = new Duration(TimeSpan.FromMilliseconds(130)),
            MaximumOutboundRoundTripDelay = new Duration(TimeSpan.FromMilliseconds(140)),
            AverageInboundJitter = new Duration(TimeSpan.FromMilliseconds(10)),
            AverageOutboundJitter = new Duration(TimeSpan.FromMilliseconds(15)),
            MaximumInboundJitter = new Duration(TimeSpan.FromMilliseconds(23)),
            MaximumOutboundJitter = new Duration(TimeSpan.FromMilliseconds(24)),
        },
        new TeleconferenceDeviceVideoQuality()
        {
            ChannelIndex = 1,
            MediaDuration = new Duration(TimeSpan.FromSeconds(1200)),
            NetworkLinkSpeedInBytes = 13000,
            LocalIPAddress = "127.0.0.1",
            LocalPort = 6300,
            RemoteIPAddress = "127.0.0.2",
            RemotePort = 6301,
            InboundPackets = 5500,
            OutboundPackets = 5400,
            AverageInboundPacketLossRateInPercentage = 0.01,
            AverageOutboundPacketLossRateInPercentage = 0.02,
            MaximumInboundPacketLossRateInPercentage = 0.05,
            MaximumOutboundPacketLossRateInPercentage = 0.06,
            AverageInboundRoundTripDelay = new Duration(TimeSpan.FromMilliseconds(30)),
            AverageOutboundRoundTripDelay = new Duration(TimeSpan.FromMilliseconds(40)),
            MaximumInboundRoundTripDelay = new Duration(TimeSpan.FromMilliseconds(130)),
            MaximumOutboundRoundTripDelay = new Duration(TimeSpan.FromMilliseconds(140)),
            AverageInboundJitter = new Duration(TimeSpan.FromMilliseconds(10)),
            AverageOutboundJitter = new Duration(TimeSpan.FromMilliseconds(15)),
            MaximumInboundJitter = new Duration(TimeSpan.FromMilliseconds(23)),
            MaximumOutboundJitter = new Duration(TimeSpan.FromMilliseconds(24)),
        },
        new TeleconferenceDeviceScreenSharingQuality()
        {
            ChannelIndex = 1,
            MediaDuration = new Duration(TimeSpan.FromSeconds(1200)),
            NetworkLinkSpeedInBytes = 13000,
            LocalIPAddress = "127.0.0.1",
            LocalPort = 6300,
            RemoteIPAddress = "127.0.0.2",
            RemotePort = 6301,
            InboundPackets = 5500,
            OutboundPackets = 5400,
            AverageInboundPacketLossRateInPercentage = 0.01,
            AverageOutboundPacketLossRateInPercentage = 0.02,
            MaximumInboundPacketLossRateInPercentage = 0.05,
            MaximumOutboundPacketLossRateInPercentage = 0.06,
            AverageInboundRoundTripDelay = new Duration(TimeSpan.FromMilliseconds(30)),
            AverageOutboundRoundTripDelay = new Duration(TimeSpan.FromMilliseconds(40)),
            MaximumInboundRoundTripDelay = new Duration(TimeSpan.FromMilliseconds(130)),
            MaximumOutboundRoundTripDelay = new Duration(TimeSpan.FromMilliseconds(140)),
            AverageInboundJitter = new Duration(TimeSpan.FromMilliseconds(10)),
            AverageOutboundJitter = new Duration(TimeSpan.FromMilliseconds(15)),
            MaximumInboundJitter = new Duration(TimeSpan.FromMilliseconds(23)),
            MaximumOutboundJitter = new Duration(TimeSpan.FromMilliseconds(24)),
        },
    },
};

await graphClient.Communications.Calls().LogTeleconferenceDeviceQualityAsync(sessionQoe, tenantId, scenarioId).ConfigureAwait(false);
```