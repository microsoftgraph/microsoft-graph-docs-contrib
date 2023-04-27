---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Communications/Calls/LogTeleconferenceDeviceQuality"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewLogTeleconferenceDeviceQualityPostRequestBody()
quality := graphmodels.NewTeleconferenceDeviceQuality()
callChainId := uuid.MustParse("0622673d-9f69-49b3-9d4f-5ec64f42ecce")
quality.SetCallChainId(&callChainId) 
participantId := uuid.MustParse("ea078406-b5d4-4d3c-b85e-90103dcec7f6")
quality.SetParticipantId(&participantId) 
mediaLegId := uuid.MustParse("bd9ee398-4b9d-42c7-8b8d-4e8efad9435f")
quality.SetMediaLegId(&mediaLegId) 
deviceName := "TestAgent"
quality.SetDeviceName(&deviceName) 
deviceDescription := "TestDescription"
quality.SetDeviceDescription(&deviceDescription) 


teleconferenceDeviceMediaQuality := graphmodels.NewTeleconferenceDeviceMediaQuality()
channelIndex := int32(1)
teleconferenceDeviceMediaQuality.SetChannelIndex(&channelIndex) 
mediaDuration , err := abstractions.ParseISODuration("PT20M")
teleconferenceDeviceMediaQuality.SetMediaDuration(&mediaDuration) 
networkLinkSpeedInBytes := int64(13000)
teleconferenceDeviceMediaQuality.SetNetworkLinkSpeedInBytes(&networkLinkSpeedInBytes) 
localIPAddress := "127.0.0.1"
teleconferenceDeviceMediaQuality.SetLocalIPAddress(&localIPAddress) 
localPort := int32(6300)
teleconferenceDeviceMediaQuality.SetLocalPort(&localPort) 
remoteIPAddress := "102.1.1.101"
teleconferenceDeviceMediaQuality.SetRemoteIPAddress(&remoteIPAddress) 
remotePort := int32(6301)
teleconferenceDeviceMediaQuality.SetRemotePort(&remotePort) 
inboundPackets := int64(5500)
teleconferenceDeviceMediaQuality.SetInboundPackets(&inboundPackets) 
outboundPackets := int64(5400)
teleconferenceDeviceMediaQuality.SetOutboundPackets(&outboundPackets) 
averageInboundPacketLossRateInPercentage := float64(0.01)
teleconferenceDeviceMediaQuality.SetAverageInboundPacketLossRateInPercentage(&averageInboundPacketLossRateInPercentage) 
averageOutboundPacketLossRateInPercentage := float64(0.02)
teleconferenceDeviceMediaQuality.SetAverageOutboundPacketLossRateInPercentage(&averageOutboundPacketLossRateInPercentage) 
maximumInboundPacketLossRateInPercentage := float64(0.05)
teleconferenceDeviceMediaQuality.SetMaximumInboundPacketLossRateInPercentage(&maximumInboundPacketLossRateInPercentage) 
maximumOutboundPacketLossRateInPercentage := float64(0.06)
teleconferenceDeviceMediaQuality.SetMaximumOutboundPacketLossRateInPercentage(&maximumOutboundPacketLossRateInPercentage) 
averageInboundRoundTripDelay , err := abstractions.ParseISODuration("PT0.03S")
teleconferenceDeviceMediaQuality.SetAverageInboundRoundTripDelay(&averageInboundRoundTripDelay) 
averageOutboundRoundTripDelay , err := abstractions.ParseISODuration("PT0.04S")
teleconferenceDeviceMediaQuality.SetAverageOutboundRoundTripDelay(&averageOutboundRoundTripDelay) 
maximumInboundRoundTripDelay , err := abstractions.ParseISODuration("PT0.13S")
teleconferenceDeviceMediaQuality.SetMaximumInboundRoundTripDelay(&maximumInboundRoundTripDelay) 
maximumOutboundRoundTripDelay , err := abstractions.ParseISODuration("PT0.14S")
teleconferenceDeviceMediaQuality.SetMaximumOutboundRoundTripDelay(&maximumOutboundRoundTripDelay) 
averageInboundJitter , err := abstractions.ParseISODuration("PT0.01S")
teleconferenceDeviceMediaQuality.SetAverageInboundJitter(&averageInboundJitter) 
averageOutboundJitter , err := abstractions.ParseISODuration("PT0.015S")
teleconferenceDeviceMediaQuality.SetAverageOutboundJitter(&averageOutboundJitter) 
maximumInboundJitter , err := abstractions.ParseISODuration("PT0.023S")
teleconferenceDeviceMediaQuality.SetMaximumInboundJitter(&maximumInboundJitter) 
maximumOutboundJitter , err := abstractions.ParseISODuration("PT0.024S")
teleconferenceDeviceMediaQuality.SetMaximumOutboundJitter(&maximumOutboundJitter) 
teleconferenceDeviceMediaQuality1 := graphmodels.NewTeleconferenceDeviceMediaQuality()
channelIndex := int32(1)
teleconferenceDeviceMediaQuality1.SetChannelIndex(&channelIndex) 
mediaDuration , err := abstractions.ParseISODuration("PT20M")
teleconferenceDeviceMediaQuality1.SetMediaDuration(&mediaDuration) 
networkLinkSpeedInBytes := int64(13000)
teleconferenceDeviceMediaQuality1.SetNetworkLinkSpeedInBytes(&networkLinkSpeedInBytes) 
localIPAddress := "127.0.0.1"
teleconferenceDeviceMediaQuality1.SetLocalIPAddress(&localIPAddress) 
localPort := int32(6300)
teleconferenceDeviceMediaQuality1.SetLocalPort(&localPort) 
remoteIPAddress := "102.1.1.101"
teleconferenceDeviceMediaQuality1.SetRemoteIPAddress(&remoteIPAddress) 
remotePort := int32(6301)
teleconferenceDeviceMediaQuality1.SetRemotePort(&remotePort) 
inboundPackets := int64(5500)
teleconferenceDeviceMediaQuality1.SetInboundPackets(&inboundPackets) 
outboundPackets := int64(5400)
teleconferenceDeviceMediaQuality1.SetOutboundPackets(&outboundPackets) 
averageInboundPacketLossRateInPercentage := float64(0.01)
teleconferenceDeviceMediaQuality1.SetAverageInboundPacketLossRateInPercentage(&averageInboundPacketLossRateInPercentage) 
averageOutboundPacketLossRateInPercentage := float64(0.02)
teleconferenceDeviceMediaQuality1.SetAverageOutboundPacketLossRateInPercentage(&averageOutboundPacketLossRateInPercentage) 
maximumInboundPacketLossRateInPercentage := float64(0.05)
teleconferenceDeviceMediaQuality1.SetMaximumInboundPacketLossRateInPercentage(&maximumInboundPacketLossRateInPercentage) 
maximumOutboundPacketLossRateInPercentage := float64(0.06)
teleconferenceDeviceMediaQuality1.SetMaximumOutboundPacketLossRateInPercentage(&maximumOutboundPacketLossRateInPercentage) 
averageInboundRoundTripDelay , err := abstractions.ParseISODuration("PT0.03S")
teleconferenceDeviceMediaQuality1.SetAverageInboundRoundTripDelay(&averageInboundRoundTripDelay) 
averageOutboundRoundTripDelay , err := abstractions.ParseISODuration("PT0.04S")
teleconferenceDeviceMediaQuality1.SetAverageOutboundRoundTripDelay(&averageOutboundRoundTripDelay) 
maximumInboundRoundTripDelay , err := abstractions.ParseISODuration("PT0.13S")
teleconferenceDeviceMediaQuality1.SetMaximumInboundRoundTripDelay(&maximumInboundRoundTripDelay) 
maximumOutboundRoundTripDelay , err := abstractions.ParseISODuration("PT0.14S")
teleconferenceDeviceMediaQuality1.SetMaximumOutboundRoundTripDelay(&maximumOutboundRoundTripDelay) 
averageInboundJitter , err := abstractions.ParseISODuration("PT0.01S")
teleconferenceDeviceMediaQuality1.SetAverageInboundJitter(&averageInboundJitter) 
averageOutboundJitter , err := abstractions.ParseISODuration("PT0.015S")
teleconferenceDeviceMediaQuality1.SetAverageOutboundJitter(&averageOutboundJitter) 
maximumInboundJitter , err := abstractions.ParseISODuration("PT0.023S")
teleconferenceDeviceMediaQuality1.SetMaximumInboundJitter(&maximumInboundJitter) 
maximumOutboundJitter , err := abstractions.ParseISODuration("PT0.024S")
teleconferenceDeviceMediaQuality1.SetMaximumOutboundJitter(&maximumOutboundJitter) 
teleconferenceDeviceMediaQuality2 := graphmodels.NewTeleconferenceDeviceMediaQuality()
channelIndex := int32(1)
teleconferenceDeviceMediaQuality2.SetChannelIndex(&channelIndex) 
mediaDuration , err := abstractions.ParseISODuration("PT20M")
teleconferenceDeviceMediaQuality2.SetMediaDuration(&mediaDuration) 
networkLinkSpeedInBytes := int64(13000)
teleconferenceDeviceMediaQuality2.SetNetworkLinkSpeedInBytes(&networkLinkSpeedInBytes) 
localIPAddress := "127.0.0.1"
teleconferenceDeviceMediaQuality2.SetLocalIPAddress(&localIPAddress) 
localPort := int32(6300)
teleconferenceDeviceMediaQuality2.SetLocalPort(&localPort) 
remoteIPAddress := "102.1.1.101"
teleconferenceDeviceMediaQuality2.SetRemoteIPAddress(&remoteIPAddress) 
remotePort := int32(6301)
teleconferenceDeviceMediaQuality2.SetRemotePort(&remotePort) 
inboundPackets := int64(5500)
teleconferenceDeviceMediaQuality2.SetInboundPackets(&inboundPackets) 
outboundPackets := int64(5400)
teleconferenceDeviceMediaQuality2.SetOutboundPackets(&outboundPackets) 
averageInboundPacketLossRateInPercentage := float64(0.01)
teleconferenceDeviceMediaQuality2.SetAverageInboundPacketLossRateInPercentage(&averageInboundPacketLossRateInPercentage) 
averageOutboundPacketLossRateInPercentage := float64(0.02)
teleconferenceDeviceMediaQuality2.SetAverageOutboundPacketLossRateInPercentage(&averageOutboundPacketLossRateInPercentage) 
maximumInboundPacketLossRateInPercentage := float64(0.05)
teleconferenceDeviceMediaQuality2.SetMaximumInboundPacketLossRateInPercentage(&maximumInboundPacketLossRateInPercentage) 
maximumOutboundPacketLossRateInPercentage := float64(0.06)
teleconferenceDeviceMediaQuality2.SetMaximumOutboundPacketLossRateInPercentage(&maximumOutboundPacketLossRateInPercentage) 
averageInboundRoundTripDelay , err := abstractions.ParseISODuration("PT0.03S")
teleconferenceDeviceMediaQuality2.SetAverageInboundRoundTripDelay(&averageInboundRoundTripDelay) 
averageOutboundRoundTripDelay , err := abstractions.ParseISODuration("PT0.04S")
teleconferenceDeviceMediaQuality2.SetAverageOutboundRoundTripDelay(&averageOutboundRoundTripDelay) 
maximumInboundRoundTripDelay , err := abstractions.ParseISODuration("PT0.13S")
teleconferenceDeviceMediaQuality2.SetMaximumInboundRoundTripDelay(&maximumInboundRoundTripDelay) 
maximumOutboundRoundTripDelay , err := abstractions.ParseISODuration("PT0.14S")
teleconferenceDeviceMediaQuality2.SetMaximumOutboundRoundTripDelay(&maximumOutboundRoundTripDelay) 
averageInboundJitter , err := abstractions.ParseISODuration("PT0.01S")
teleconferenceDeviceMediaQuality2.SetAverageInboundJitter(&averageInboundJitter) 
averageOutboundJitter , err := abstractions.ParseISODuration("PT0.015S")
teleconferenceDeviceMediaQuality2.SetAverageOutboundJitter(&averageOutboundJitter) 
maximumInboundJitter , err := abstractions.ParseISODuration("PT0.023S")
teleconferenceDeviceMediaQuality2.SetMaximumInboundJitter(&maximumInboundJitter) 
maximumOutboundJitter , err := abstractions.ParseISODuration("PT0.024S")
teleconferenceDeviceMediaQuality2.SetMaximumOutboundJitter(&maximumOutboundJitter) 

mediaQualityList := []graphmodels.TeleconferenceDeviceMediaQualityable {
	teleconferenceDeviceMediaQuality,
	teleconferenceDeviceMediaQuality1,
	teleconferenceDeviceMediaQuality2,

}
quality.SetMediaQualityList(mediaQualityList)
requestBody.SetQuality(quality)

graphClient.Communications().Calls().LogTeleconferenceDeviceQuality().Post(context.Background(), requestBody, nil)


```