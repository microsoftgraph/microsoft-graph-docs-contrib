---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Reports

$params = @{
	attributeSet = "full"
	billingPeriod = "current"
	currencyCode = "USD"
}

Export-MgReportPartnerBillingReconciliationUnbilled -BodyParameter $params

```