---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewGetSharedUseLicenseUsageReportPostRequestBody()
reportName := graphmodels.SHAREDUSELICENSEUSAGEREPORT_CLOUDPCREPORTNAME 
requestBody.SetReportName(&reportName) 
filter := "ServicePlanId eq '2d1d344e-d10c-41bb-953b-b3a47521dca0' and DateTimeUTC gt datetime'2022-11-30'"
requestBody.SetFilter(&filter) 
select := []string {
	"ServicePlanId",
	"LicenseCount",
	"ClaimedLicenseCount",
	"DateTimeUTC",
}
requestBody.SetSelect(select)
skip := int32(0)
requestBody.SetSkip(&skip) 
top := int32(100)
requestBody.SetTop(&top) 

graphClient.DeviceManagement().VirtualEndpoint().Reports().GetSharedUseLicenseUsageReport().Post(context.Background(), requestBody, nil)


```