---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewLogTeleconferenceDeviceQualityPostRequestBody()
quality := graphmodels.NewTeleconferenceDeviceQuality()
"@odata.type" := "#microsoft.graph.teleconferenceDeviceQuality"
quality.Set"@odata.type"(&"@odata.type") 
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
additionalData := map[string]interface{}{
	"@odata.type" : "#microsoft.graph.teleconferenceDeviceAudioQuality", 
	"channelIndex" : int32(1) , 
	"mediaDuration" : "PT20M", 
	"networkLinkSpeedInBytes" : int32(13000) , 
	"localIPAddress" : "127.0.0.1", 
	"localPort" : int32(6300) , 
	"remoteIPAddress" : "102.1.1.101", 
	"remotePort" : int32(6301) , 
	"inboundPackets" : int32(5500) , 
	"outboundPackets" : int32(5400) , 
	"averageInboundPacketLossRateInPercentage" : int32(0.01) , 
	"averageOutboundPacketLossRateInPercentage" : int32(0.02) , 
	"maximumInboundPacketLossRateInPercentage" : int32(0.05) , 
	"maximumOutboundPacketLossRateInPercentage" : int32(0.06) , 
	"averageInboundRoundTripDelay" : "PT0.03S", 
	"averageOutboundRoundTripDelay" : "PT0.04S", 
	"maximumInboundRoundTripDelay" : "PT0.13S", 
	"maximumOutboundRoundTripDelay" : "PT0.14S", 
	"averageInboundJitter" : "PT0.01S", 
	"averageOutboundJitter" : "PT0.015S", 
	"maximumInboundJitter" : "PT0.023S", 
	"maximumOutboundJitter" : "PT0.024S", 
}
teleconferenceDeviceMediaQuality.SetAdditionalData(additionalData)
teleconferenceDeviceMediaQuality1 := graphmodels.NewTeleconferenceDeviceMediaQuality()
additionalData := map[string]interface{}{
	"@odata.type" : "#microsoft.graph.teleconferenceDeviceVideoQuality", 
	"channelIndex" : int32(1) , 
	"mediaDuration" : "PT20M", 
	"networkLinkSpeedInBytes" : int32(13000) , 
	"localIPAddress" : "127.0.0.1", 
	"localPort" : int32(6300) , 
	"remoteIPAddress" : "102.1.1.101", 
	"remotePort" : int32(6301) , 
	"inboundPackets" : int32(5500) , 
	"outboundPackets" : int32(5400) , 
	"averageInboundPacketLossRateInPercentage" : int32(0.01) , 
	"averageOutboundPacketLossRateInPercentage" : int32(0.02) , 
	"maximumInboundPacketLossRateInPercentage" : int32(0.05) , 
	"maximumOutboundPacketLossRateInPercentage" : int32(0.06) , 
	"averageInboundRoundTripDelay" : "PT0.03S", 
	"averageOutboundRoundTripDelay" : "PT0.04S", 
	"maximumInboundRoundTripDelay" : "PT0.13S", 
	"maximumOutboundRoundTripDelay" : "PT0.14S", 
	"averageInboundJitter" : "PT0.01S", 
	"averageOutboundJitter" : "PT0.015S", 
	"maximumInboundJitter" : "PT0.023S", 
	"maximumOutboundJitter" : "PT0.024S", 
}
teleconferenceDeviceMediaQuality1.SetAdditionalData(additionalData)
teleconferenceDeviceMediaQuality2 := graphmodels.NewTeleconferenceDeviceMediaQuality()
additionalData := map[string]interface{}{
	"@odata.type" : "#microsoft.graph.teleconferenceDeviceScreenSharingQuality", 
	"channelIndex" : int32(1) , 
	"mediaDuration" : "PT20M", 
	"networkLinkSpeedInBytes" : int32(13000) , 
	"localIPAddress" : "127.0.0.1", 
	"localPort" : int32(6300) , 
	"remoteIPAddress" : "102.1.1.101", 
	"remotePort" : int32(6301) , 
	"inboundPackets" : int32(5500) , 
	"outboundPackets" : int32(5400) , 
	"averageInboundPacketLossRateInPercentage" : int32(0.01) , 
	"averageOutboundPacketLossRateInPercentage" : int32(0.02) , 
	"maximumInboundPacketLossRateInPercentage" : int32(0.05) , 
	"maximumOutboundPacketLossRateInPercentage" : int32(0.06) , 
	"averageInboundRoundTripDelay" : "PT0.03S", 
	"averageOutboundRoundTripDelay" : "PT0.04S", 
	"maximumInboundRoundTripDelay" : "PT0.13S", 
	"maximumOutboundRoundTripDelay" : "PT0.14S", 
	"averageInboundJitter" : "PT0.01S", 
	"averageOutboundJitter" : "PT0.015S", 
	"maximumInboundJitter" : "PT0.023S", 
	"maximumOutboundJitter" : "PT0.024S", 
}
teleconferenceDeviceMediaQuality2.SetAdditionalData(additionalData)

mediaQualityList := []graphmodels.TeleconferenceDeviceMediaQualityable {
	teleconferenceDeviceMediaQuality,
	teleconferenceDeviceMediaQuality1,
	teleconferenceDeviceMediaQuality2,

}
quality.SetMediaQualityList(mediaQualityList)
requestBody.SetQuality(quality)

graphClient.Communications().Calls().LogTeleconferenceDeviceQuality().Post(requestBody)


```