---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewWorkPosition()
detail := graphmodels.NewPositionDetail()
company := graphmodels.NewCompanyDetail()
displayName := "Adventureworks Ltd."
company.SetDisplayName(&displayName) 
department := "Consulting"
company.SetDepartment(&department) 
officeLocation := "AW23/344"
company.SetOfficeLocation(&officeLocation) 
address := graphmodels.NewPhysicalAddress()
type := graphmodels.BUSINESS_PHYSICALADDRESSTYPE 
address.SetType(&type) 
street := "123 Patriachy Ponds"
address.SetStreet(&street) 
city := "Moscow"
address.SetCity(&city) 
countryOrRegion := "Russian Federation"
address.SetCountryOrRegion(&countryOrRegion) 
postalCode := "RU-34621"
address.SetPostalCode(&postalCode) 
company.SetAddress(address)
webUrl := "https://www.adventureworks.com"
company.SetWebUrl(&webUrl) 
detail.SetCompany(company)
jobTitle := "Senior Product Branding Manager II"
detail.SetJobTitle(&jobTitle) 
role := "consulting"
detail.SetRole(&role) 
requestBody.SetDetail(detail)
isCurrent := true
requestBody.SetIsCurrent(&isCurrent) 

result, err := graphClient.Me().Profile().Positions().Post(context.Background(), requestBody, nil)


```