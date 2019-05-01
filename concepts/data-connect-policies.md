---
title: "Policies and licensing"
description: "Describes what policies are supported and how to assign ISV access SKUs to organizations."
author: "tlenig"
localization_priority: Priority
ms.prod: "data-connect"
---

# Policies and licensing

Microsoft Graph data connect uses [Azure managed applications](https://docs.microsoft.com/en-us/azure/managed-applications/overview) to allow you to create and deploy your solutions in your customer's Azure environment. Managed applications allow you to support certain Azure policies, giving customers greater confidence and comfortability when using your applications. Additionally, you must purchase and apply licenses from Microsoft your organization or the organizations that install your applications, in order to allow the application to access data through data connect.

## Policies

The following Azure policies are supported for an Azure managed application built using Office 365 data:

- [ADLS Gen1 Encryption Required Policy](https://docs.microsoft.com/en-us/azure/azure-policy/scripts/enforce-datalakestore-encryption)

When you select any of the policies during Azure marketplace publishing, the policy compliance status will be checked and enforced for all installations of your application. All selected policies that are compliant will be shown to the data approvers as part of the data request. Any policy compliance violation would cause the pipeline run to fail and stop the data movement.

If you would like to request support for additional policies , let us know on [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359581).

## Licensing

Organizations must purchase a particular SKU to develop applications or acces their data through data connect. If an organization wants to access their own data, they must purchase Workplace Analytics for the users they wish to access. Once a customer has purchased Workplace Analytics for their users, they can utilize data connect to access their data directly or they can deploy any application developed by an independent software vendors (ISV) that uses data connect as well. Visit the [Workplace Analytics product page](https://products.office.com/en-us/business/workplace-analytics) to learn more about the offering and how to purchase. 

We also provide an option for ISVs to give their applications to customers who have not purchased Workplace Analytics. To do so, the ISV must purchase and assoicate enough Microsoft Graph data connect licenses for all users being accessed through data connect for each customer of their application. This option can be used in conjunction with Workplace Analytics licenses to use data connect. Certain steps must be taken by the ISV to assoicate instances of the Microsoft Graph data connect license with each of their customer installations. 

### ISVs using the Microsoft Graph data connect license
Data connect uses [Azure Key Vault](https://azure.microsoft.com/en-us/services/key-vault/) to store and process the license assignment made by the ISV. ISVs will need to [create a Key Vault](https://docs.microsoft.com/en-us/azure/key-vault/quick-create-portal). During creation, note the Key Vault URI value, as it will be used in the application definition to reference the Key Vault. Once it is created, ensure the SPN used in the Source Linked Service of the application's ARM template has access to this Key Vault. To do so, navigate to the Access Policies pane of the Key Vault instance, create an access policy for the application referenced by the SPN and assign `Get` and `List` permissions to the application. 

![Creating access policy to Key Vault](/concepts/images/data-connect-keyvault-access.png)

The assignment of Microsoft Graph data connect licenses to organizations is provided as a secret in the Key Vault. Navigate to the Key Vault and under Generate/Import, create a manual secret. The name of the secret must be `MGdcSKUMapping` and the value of the secret must contain the `Id` of the tenant and the number of licenses allocated to that tenant in the following format.

`{"tenantId1" : 20, "tenantId2" : 35, "tenantId3" : 12}`

After setting the value, ensure it is enabled and select Create to begin the deployment. 

![Creating the secret in Key Vault](/concepts/images/data-connect-keyvault-create.png)

The application's ARM template must also be updated to reference the Key Vault created. To do so, we have provided a new property called `LicenseKeyVaultUri` which must be populated with the `KeyVaultUri` value noted during creation. This property is provided in the Source Linked Service of the applications ARM template in the following way. 

```
"properties": {
        "type": "Office365",
	        "description": "Source O365 linked service",
	        "typeProperties": {
	               "office365tenantId": "[subscription().tenantId]",
		"PrivacyPolicyUri": "http://www.wkw.com/privacy",
		"TermsOfUseUri": "http://www.wkw.com/tos",
		"servicePrincipalId": "[variables('sourceLinkedServicePrincipalId')]",
		"servicePrincipalKey": {
	                       "type": "SecureString",
		        "value": "[variables('sourceLinkedServicePrincipalKey')]"
		},
		"servicePrincipalTenantId": "[variables('sourceLinkedServicePrincipalTenantId')]",
	    "LicenseKeyVaultUri": "<KeyVaultUri>",
	        }
	}
```

Data connect will reference the secret in the provided Key Vault before each pipeline run and fail the pipeline if there are not enough licenses assigned to the organization to provide data for each user or if the Key Vault is inaccessible. 

## Next Steps
If you would like to request support for additional policies, let us know on [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359581). To learn more about Workplace Analytics, including how to purchase, visit the [Workplace Analytics product page](https://products.office.com/en-us/business/workplace-analytics).
