---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.logteleconferencedevicequality.LogTeleconferenceDeviceQualityPostRequestBody logTeleconferenceDeviceQualityPostRequestBody = new com.microsoft.graph.beta.communications.calls.logteleconferencedevicequality.LogTeleconferenceDeviceQualityPostRequestBody();
TeleconferenceDeviceQuality quality = new TeleconferenceDeviceQuality();
quality.setOdataType("#microsoft.graph.teleconferenceDeviceQuality");
quality.setCallChainId(UUID.fromString("0622673d-9f69-49b3-9d4f-5ec64f42ecce"));
quality.setParticipantId(UUID.fromString("ea078406-b5d4-4d3c-b85e-90103dcec7f6"));
quality.setMediaLegId(UUID.fromString("bd9ee398-4b9d-42c7-8b8d-4e8efad9435f"));
quality.setDeviceName("TestAgent");
quality.setDeviceDescription("TestDescription");
LinkedList<TeleconferenceDeviceMediaQuality> mediaQualityList = new LinkedList<TeleconferenceDeviceMediaQuality>();
TeleconferenceDeviceAudioQuality teleconferenceDeviceMediaQuality = new TeleconferenceDeviceAudioQuality();
teleconferenceDeviceMediaQuality.setOdataType("#microsoft.graph.teleconferenceDeviceAudioQuality");
teleconferenceDeviceMediaQuality.setChannelIndex(1);
PeriodAndDuration mediaDuration = PeriodAndDuration.ofDuration(Duration.parse("PT20M"));
teleconferenceDeviceMediaQuality.setMediaDuration(mediaDuration);
teleconferenceDeviceMediaQuality.setNetworkLinkSpeedInBytes(13000L);
teleconferenceDeviceMediaQuality.setLocalIPAddress("127.0.0.1");
teleconferenceDeviceMediaQuality.setLocalPort(6300);
teleconferenceDeviceMediaQuality.setRemoteIPAddress("102.1.1.101");
teleconferenceDeviceMediaQuality.setRemotePort(6301);
teleconferenceDeviceMediaQuality.setInboundPackets(5500L);
teleconferenceDeviceMediaQuality.setOutboundPackets(5400L);
teleconferenceDeviceMediaQuality.setAverageInboundPacketLossRateInPercentage(0.01d);
teleconferenceDeviceMediaQuality.setAverageOutboundPacketLossRateInPercentage(0.02d);
teleconferenceDeviceMediaQuality.setMaximumInboundPacketLossRateInPercentage(0.05d);
teleconferenceDeviceMediaQuality.setMaximumOutboundPacketLossRateInPercentage(0.06d);
PeriodAndDuration averageInboundRoundTripDelay = PeriodAndDuration.ofDuration(Duration.parse("PT0.03S"));
teleconferenceDeviceMediaQuality.setAverageInboundRoundTripDelay(averageInboundRoundTripDelay);
PeriodAndDuration averageOutboundRoundTripDelay = PeriodAndDuration.ofDuration(Duration.parse("PT0.04S"));
teleconferenceDeviceMediaQuality.setAverageOutboundRoundTripDelay(averageOutboundRoundTripDelay);
PeriodAndDuration maximumInboundRoundTripDelay = PeriodAndDuration.ofDuration(Duration.parse("PT0.13S"));
teleconferenceDeviceMediaQuality.setMaximumInboundRoundTripDelay(maximumInboundRoundTripDelay);
PeriodAndDuration maximumOutboundRoundTripDelay = PeriodAndDuration.ofDuration(Duration.parse("PT0.14S"));
teleconferenceDeviceMediaQuality.setMaximumOutboundRoundTripDelay(maximumOutboundRoundTripDelay);
PeriodAndDuration averageInboundJitter = PeriodAndDuration.ofDuration(Duration.parse("PT0.01S"));
teleconferenceDeviceMediaQuality.setAverageInboundJitter(averageInboundJitter);
PeriodAndDuration averageOutboundJitter = PeriodAndDuration.ofDuration(Duration.parse("PT0.015S"));
teleconferenceDeviceMediaQuality.setAverageOutboundJitter(averageOutboundJitter);
PeriodAndDuration maximumInboundJitter = PeriodAndDuration.ofDuration(Duration.parse("PT0.023S"));
teleconferenceDeviceMediaQuality.setMaximumInboundJitter(maximumInboundJitter);
PeriodAndDuration maximumOutboundJitter = PeriodAndDuration.ofDuration(Duration.parse("PT0.024S"));
teleconferenceDeviceMediaQuality.setMaximumOutboundJitter(maximumOutboundJitter);
mediaQualityList.add(teleconferenceDeviceMediaQuality);
TeleconferenceDeviceVideoQuality teleconferenceDeviceMediaQuality1 = new TeleconferenceDeviceVideoQuality();
teleconferenceDeviceMediaQuality1.setOdataType("#microsoft.graph.teleconferenceDeviceVideoQuality");
teleconferenceDeviceMediaQuality1.setChannelIndex(1);
PeriodAndDuration mediaDuration1 = PeriodAndDuration.ofDuration(Duration.parse("PT20M"));
teleconferenceDeviceMediaQuality1.setMediaDuration(mediaDuration1);
teleconferenceDeviceMediaQuality1.setNetworkLinkSpeedInBytes(13000L);
teleconferenceDeviceMediaQuality1.setLocalIPAddress("127.0.0.1");
teleconferenceDeviceMediaQuality1.setLocalPort(6300);
teleconferenceDeviceMediaQuality1.setRemoteIPAddress("102.1.1.101");
teleconferenceDeviceMediaQuality1.setRemotePort(6301);
teleconferenceDeviceMediaQuality1.setInboundPackets(5500L);
teleconferenceDeviceMediaQuality1.setOutboundPackets(5400L);
teleconferenceDeviceMediaQuality1.setAverageInboundPacketLossRateInPercentage(0.01d);
teleconferenceDeviceMediaQuality1.setAverageOutboundPacketLossRateInPercentage(0.02d);
teleconferenceDeviceMediaQuality1.setMaximumInboundPacketLossRateInPercentage(0.05d);
teleconferenceDeviceMediaQuality1.setMaximumOutboundPacketLossRateInPercentage(0.06d);
PeriodAndDuration averageInboundRoundTripDelay1 = PeriodAndDuration.ofDuration(Duration.parse("PT0.03S"));
teleconferenceDeviceMediaQuality1.setAverageInboundRoundTripDelay(averageInboundRoundTripDelay1);
PeriodAndDuration averageOutboundRoundTripDelay1 = PeriodAndDuration.ofDuration(Duration.parse("PT0.04S"));
teleconferenceDeviceMediaQuality1.setAverageOutboundRoundTripDelay(averageOutboundRoundTripDelay1);
PeriodAndDuration maximumInboundRoundTripDelay1 = PeriodAndDuration.ofDuration(Duration.parse("PT0.13S"));
teleconferenceDeviceMediaQuality1.setMaximumInboundRoundTripDelay(maximumInboundRoundTripDelay1);
PeriodAndDuration maximumOutboundRoundTripDelay1 = PeriodAndDuration.ofDuration(Duration.parse("PT0.14S"));
teleconferenceDeviceMediaQuality1.setMaximumOutboundRoundTripDelay(maximumOutboundRoundTripDelay1);
PeriodAndDuration averageInboundJitter1 = PeriodAndDuration.ofDuration(Duration.parse("PT0.01S"));
teleconferenceDeviceMediaQuality1.setAverageInboundJitter(averageInboundJitter1);
PeriodAndDuration averageOutboundJitter1 = PeriodAndDuration.ofDuration(Duration.parse("PT0.015S"));
teleconferenceDeviceMediaQuality1.setAverageOutboundJitter(averageOutboundJitter1);
PeriodAndDuration maximumInboundJitter1 = PeriodAndDuration.ofDuration(Duration.parse("PT0.023S"));
teleconferenceDeviceMediaQuality1.setMaximumInboundJitter(maximumInboundJitter1);
PeriodAndDuration maximumOutboundJitter1 = PeriodAndDuration.ofDuration(Duration.parse("PT0.024S"));
teleconferenceDeviceMediaQuality1.setMaximumOutboundJitter(maximumOutboundJitter1);
mediaQualityList.add(teleconferenceDeviceMediaQuality1);
TeleconferenceDeviceScreenSharingQuality teleconferenceDeviceMediaQuality2 = new TeleconferenceDeviceScreenSharingQuality();
teleconferenceDeviceMediaQuality2.setOdataType("#microsoft.graph.teleconferenceDeviceScreenSharingQuality");
teleconferenceDeviceMediaQuality2.setChannelIndex(1);
PeriodAndDuration mediaDuration2 = PeriodAndDuration.ofDuration(Duration.parse("PT20M"));
teleconferenceDeviceMediaQuality2.setMediaDuration(mediaDuration2);
teleconferenceDeviceMediaQuality2.setNetworkLinkSpeedInBytes(13000L);
teleconferenceDeviceMediaQuality2.setLocalIPAddress("127.0.0.1");
teleconferenceDeviceMediaQuality2.setLocalPort(6300);
teleconferenceDeviceMediaQuality2.setRemoteIPAddress("102.1.1.101");
teleconferenceDeviceMediaQuality2.setRemotePort(6301);
teleconferenceDeviceMediaQuality2.setInboundPackets(5500L);
teleconferenceDeviceMediaQuality2.setOutboundPackets(5400L);
teleconferenceDeviceMediaQuality2.setAverageInboundPacketLossRateInPercentage(0.01d);
teleconferenceDeviceMediaQuality2.setAverageOutboundPacketLossRateInPercentage(0.02d);
teleconferenceDeviceMediaQuality2.setMaximumInboundPacketLossRateInPercentage(0.05d);
teleconferenceDeviceMediaQuality2.setMaximumOutboundPacketLossRateInPercentage(0.06d);
PeriodAndDuration averageInboundRoundTripDelay2 = PeriodAndDuration.ofDuration(Duration.parse("PT0.03S"));
teleconferenceDeviceMediaQuality2.setAverageInboundRoundTripDelay(averageInboundRoundTripDelay2);
PeriodAndDuration averageOutboundRoundTripDelay2 = PeriodAndDuration.ofDuration(Duration.parse("PT0.04S"));
teleconferenceDeviceMediaQuality2.setAverageOutboundRoundTripDelay(averageOutboundRoundTripDelay2);
PeriodAndDuration maximumInboundRoundTripDelay2 = PeriodAndDuration.ofDuration(Duration.parse("PT0.13S"));
teleconferenceDeviceMediaQuality2.setMaximumInboundRoundTripDelay(maximumInboundRoundTripDelay2);
PeriodAndDuration maximumOutboundRoundTripDelay2 = PeriodAndDuration.ofDuration(Duration.parse("PT0.14S"));
teleconferenceDeviceMediaQuality2.setMaximumOutboundRoundTripDelay(maximumOutboundRoundTripDelay2);
PeriodAndDuration averageInboundJitter2 = PeriodAndDuration.ofDuration(Duration.parse("PT0.01S"));
teleconferenceDeviceMediaQuality2.setAverageInboundJitter(averageInboundJitter2);
PeriodAndDuration averageOutboundJitter2 = PeriodAndDuration.ofDuration(Duration.parse("PT0.015S"));
teleconferenceDeviceMediaQuality2.setAverageOutboundJitter(averageOutboundJitter2);
PeriodAndDuration maximumInboundJitter2 = PeriodAndDuration.ofDuration(Duration.parse("PT0.023S"));
teleconferenceDeviceMediaQuality2.setMaximumInboundJitter(maximumInboundJitter2);
PeriodAndDuration maximumOutboundJitter2 = PeriodAndDuration.ofDuration(Duration.parse("PT0.024S"));
teleconferenceDeviceMediaQuality2.setMaximumOutboundJitter(maximumOutboundJitter2);
mediaQualityList.add(teleconferenceDeviceMediaQuality2);
quality.setMediaQualityList(mediaQualityList);
logTeleconferenceDeviceQualityPostRequestBody.setQuality(quality);
graphClient.communications().calls().logTeleconferenceDeviceQuality().post(logTeleconferenceDeviceQualityPostRequestBody);


```