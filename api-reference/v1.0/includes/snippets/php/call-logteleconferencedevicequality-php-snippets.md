---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new LogTeleconferenceDeviceQualityPostRequestBody();
$quality = new TeleconferenceDeviceQuality();
$quality->setOdataType('#microsoft.graph.teleconferenceDeviceQuality');

$quality->setCallChainId('0622673d-9f69-49b3-9d4f-5ec64f42ecce');

$quality->setParticipantId('ea078406-b5d4-4d3c-b85e-90103dcec7f6');

$quality->setMediaLegId('bd9ee398-4b9d-42c7-8b8d-4e8efad9435f');

$quality->setDeviceName('TestAgent');

$quality->setDeviceDescription('TestDescription');

$mediaQualityListTeleconferenceDeviceMediaQuality1 = new TeleconferenceDeviceAudioQuality();
$mediaQualityListTeleconferenceDeviceMediaQuality1->setOdataType('#microsoft.graph.teleconferenceDeviceAudioQuality');

$mediaQualityListTeleconferenceDeviceMediaQuality1->setChannelIndex(1);

$mediaQualityListTeleconferenceDeviceMediaQuality1->setMediaDuration(new \DateInterval('PT20M'));

$mediaQualityListTeleconferenceDeviceMediaQuality1->setNetworkLinkSpeedInBytes(13000);

$mediaQualityListTeleconferenceDeviceMediaQuality1->setLocalIPAddress('127.0.0.1');

$mediaQualityListTeleconferenceDeviceMediaQuality1->setLocalPort(6300);

$mediaQualityListTeleconferenceDeviceMediaQuality1->setRemoteIPAddress('102.1.1.101');

$mediaQualityListTeleconferenceDeviceMediaQuality1->setRemotePort(6301);

$mediaQualityListTeleconferenceDeviceMediaQuality1->setInboundPackets(5500);

$mediaQualityListTeleconferenceDeviceMediaQuality1->setOutboundPackets(5400);

$mediaQualityListTeleconferenceDeviceMediaQuality1->setAverageInboundPacketLossRateInPercentage(0.01);

$mediaQualityListTeleconferenceDeviceMediaQuality1->setAverageOutboundPacketLossRateInPercentage(0.02);

$mediaQualityListTeleconferenceDeviceMediaQuality1->setMaximumInboundPacketLossRateInPercentage(0.05);

$mediaQualityListTeleconferenceDeviceMediaQuality1->setMaximumOutboundPacketLossRateInPercentage(0.06);

$mediaQualityListTeleconferenceDeviceMediaQuality1->setAverageInboundRoundTripDelay(new \DateInterval('PT0.03S'));

$mediaQualityListTeleconferenceDeviceMediaQuality1->setAverageOutboundRoundTripDelay(new \DateInterval('PT0.04S'));

$mediaQualityListTeleconferenceDeviceMediaQuality1->setMaximumInboundRoundTripDelay(new \DateInterval('PT0.13S'));

$mediaQualityListTeleconferenceDeviceMediaQuality1->setMaximumOutboundRoundTripDelay(new \DateInterval('PT0.14S'));

$mediaQualityListTeleconferenceDeviceMediaQuality1->setAverageInboundJitter(new \DateInterval('PT0.01S'));

$mediaQualityListTeleconferenceDeviceMediaQuality1->setAverageOutboundJitter(new \DateInterval('PT0.015S'));

$mediaQualityListTeleconferenceDeviceMediaQuality1->setMaximumInboundJitter(new \DateInterval('PT0.023S'));

$mediaQualityListTeleconferenceDeviceMediaQuality1->setMaximumOutboundJitter(new \DateInterval('PT0.024S'));


$mediaQualityListArray []= $mediaQualityListTeleconferenceDeviceMediaQuality1;
$mediaQualityListTeleconferenceDeviceMediaQuality2 = new TeleconferenceDeviceVideoQuality();
$mediaQualityListTeleconferenceDeviceMediaQuality2->setOdataType('#microsoft.graph.teleconferenceDeviceVideoQuality');

$mediaQualityListTeleconferenceDeviceMediaQuality2->setChannelIndex(1);

$mediaQualityListTeleconferenceDeviceMediaQuality2->setMediaDuration(new \DateInterval('PT20M'));

$mediaQualityListTeleconferenceDeviceMediaQuality2->setNetworkLinkSpeedInBytes(13000);

$mediaQualityListTeleconferenceDeviceMediaQuality2->setLocalIPAddress('127.0.0.1');

$mediaQualityListTeleconferenceDeviceMediaQuality2->setLocalPort(6300);

$mediaQualityListTeleconferenceDeviceMediaQuality2->setRemoteIPAddress('102.1.1.101');

$mediaQualityListTeleconferenceDeviceMediaQuality2->setRemotePort(6301);

$mediaQualityListTeleconferenceDeviceMediaQuality2->setInboundPackets(5500);

$mediaQualityListTeleconferenceDeviceMediaQuality2->setOutboundPackets(5400);

$mediaQualityListTeleconferenceDeviceMediaQuality2->setAverageInboundPacketLossRateInPercentage(0.01);

$mediaQualityListTeleconferenceDeviceMediaQuality2->setAverageOutboundPacketLossRateInPercentage(0.02);

$mediaQualityListTeleconferenceDeviceMediaQuality2->setMaximumInboundPacketLossRateInPercentage(0.05);

$mediaQualityListTeleconferenceDeviceMediaQuality2->setMaximumOutboundPacketLossRateInPercentage(0.06);

$mediaQualityListTeleconferenceDeviceMediaQuality2->setAverageInboundRoundTripDelay(new \DateInterval('PT0.03S'));

$mediaQualityListTeleconferenceDeviceMediaQuality2->setAverageOutboundRoundTripDelay(new \DateInterval('PT0.04S'));

$mediaQualityListTeleconferenceDeviceMediaQuality2->setMaximumInboundRoundTripDelay(new \DateInterval('PT0.13S'));

$mediaQualityListTeleconferenceDeviceMediaQuality2->setMaximumOutboundRoundTripDelay(new \DateInterval('PT0.14S'));

$mediaQualityListTeleconferenceDeviceMediaQuality2->setAverageInboundJitter(new \DateInterval('PT0.01S'));

$mediaQualityListTeleconferenceDeviceMediaQuality2->setAverageOutboundJitter(new \DateInterval('PT0.015S'));

$mediaQualityListTeleconferenceDeviceMediaQuality2->setMaximumInboundJitter(new \DateInterval('PT0.023S'));

$mediaQualityListTeleconferenceDeviceMediaQuality2->setMaximumOutboundJitter(new \DateInterval('PT0.024S'));


$mediaQualityListArray []= $mediaQualityListTeleconferenceDeviceMediaQuality2;
$mediaQualityListTeleconferenceDeviceMediaQuality3 = new TeleconferenceDeviceScreenSharingQuality();
$mediaQualityListTeleconferenceDeviceMediaQuality3->setOdataType('#microsoft.graph.teleconferenceDeviceScreenSharingQuality');

$mediaQualityListTeleconferenceDeviceMediaQuality3->setChannelIndex(1);

$mediaQualityListTeleconferenceDeviceMediaQuality3->setMediaDuration(new \DateInterval('PT20M'));

$mediaQualityListTeleconferenceDeviceMediaQuality3->setNetworkLinkSpeedInBytes(13000);

$mediaQualityListTeleconferenceDeviceMediaQuality3->setLocalIPAddress('127.0.0.1');

$mediaQualityListTeleconferenceDeviceMediaQuality3->setLocalPort(6300);

$mediaQualityListTeleconferenceDeviceMediaQuality3->setRemoteIPAddress('102.1.1.101');

$mediaQualityListTeleconferenceDeviceMediaQuality3->setRemotePort(6301);

$mediaQualityListTeleconferenceDeviceMediaQuality3->setInboundPackets(5500);

$mediaQualityListTeleconferenceDeviceMediaQuality3->setOutboundPackets(5400);

$mediaQualityListTeleconferenceDeviceMediaQuality3->setAverageInboundPacketLossRateInPercentage(0.01);

$mediaQualityListTeleconferenceDeviceMediaQuality3->setAverageOutboundPacketLossRateInPercentage(0.02);

$mediaQualityListTeleconferenceDeviceMediaQuality3->setMaximumInboundPacketLossRateInPercentage(0.05);

$mediaQualityListTeleconferenceDeviceMediaQuality3->setMaximumOutboundPacketLossRateInPercentage(0.06);

$mediaQualityListTeleconferenceDeviceMediaQuality3->setAverageInboundRoundTripDelay(new \DateInterval('PT0.03S'));

$mediaQualityListTeleconferenceDeviceMediaQuality3->setAverageOutboundRoundTripDelay(new \DateInterval('PT0.04S'));

$mediaQualityListTeleconferenceDeviceMediaQuality3->setMaximumInboundRoundTripDelay(new \DateInterval('PT0.13S'));

$mediaQualityListTeleconferenceDeviceMediaQuality3->setMaximumOutboundRoundTripDelay(new \DateInterval('PT0.14S'));

$mediaQualityListTeleconferenceDeviceMediaQuality3->setAverageInboundJitter(new \DateInterval('PT0.01S'));

$mediaQualityListTeleconferenceDeviceMediaQuality3->setAverageOutboundJitter(new \DateInterval('PT0.015S'));

$mediaQualityListTeleconferenceDeviceMediaQuality3->setMaximumInboundJitter(new \DateInterval('PT0.023S'));

$mediaQualityListTeleconferenceDeviceMediaQuality3->setMaximumOutboundJitter(new \DateInterval('PT0.024S'));


$mediaQualityListArray []= $mediaQualityListTeleconferenceDeviceMediaQuality3;
$quality->setMediaQualityList($mediaQualityListArray);



$requestBody->setQuality($quality);


$graphServiceClient->communications()->calls()->logTeleconferenceDeviceQuality()->post($requestBody);


```