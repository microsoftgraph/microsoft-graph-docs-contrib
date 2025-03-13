---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	presenterDetails = @{
		bio = @{
			content = "Lead Product Manager of Contoso Sales department"
			contentType = "text"
		}
		company = "Contoso"
		jobTitle = "Product Manager"
		linkedInProfileWebUrl = "https://linkedin.com/in/DianeDemoss"
		personalSiteWebUrl = "https://DianeDemoss.com"
	}
}

Update-MgVirtualEventWebinarPresenter -VirtualEventWebinarId $virtualEventWebinarId -VirtualEventPresenterId $virtualEventPresenterId -BodyParameter $params

```