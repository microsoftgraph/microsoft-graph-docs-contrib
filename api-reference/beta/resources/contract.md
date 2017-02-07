# Contract resource type
Represents an existing partnership that the Partner Tenant has with a Customer Tenant.
> Exists in Partner Tenants only. Partner Tenants are Azure AD tenants that belong to Microsoft Partners who are either part of Office 365 Syndication, Microsoft Cloud Solution Provider, or Microsoft Advisor partner programs. 

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get contract](../api/contract_get.md) | Contract |Read properties and relationships of contract object.|

<!-- |[Update](../api/contract_update.md) | Contract	|Update contract object. |
|[Delete](../api/contract_delete.md) | None |Delete Contract object. | -->

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contractType|String|Type of the contract.</br></br>Possible values are:</br> *SyndicationPartner*: Partner that exclusively resells and manages O365 and Intune for this customer. They resell and support their customers.</br> *BreadthPartner*: Partner has the ability to provide administrative support for this customer. However, the partner is not allowed to resell to the customer.</br>*ResellerPartner*: Partner that is similar to a syndication partner, except that it doesn’t have exclusive access to a tenant. In the syndication case the customer cannot buy additional direct subscriptions from Microsoft or from other partners.|
|customerId|Guid|The unique identifier for the customer tenant referenced by this partnership. **Is the following accurate? ->** *Corresponds to the objectId property of the customer tenant's TenantDetail object.*|
|defaultDomainName|String|A copy of the customer tenant's default domain name. The copy is made when the partnership with the customer is established. It is not automatically updated if the customer tenant's default domain name changes.|
|displayName|String|A copy of the customer tenant's display name. The copy is made when the partnership with the customer is established. It is not automatically updated if the customer tenant's display name changes.|
|id|String| The unique identifier for the partnership. Inherited from [directoryObject](directoryobject.md). Read-only.|

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.Contract"
}-->

```json
{
  "contractType": "String",
  "customerId": "Guid",
  "defaultDomainName": "String",
  "displayName": "String",
  "id": "String (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Contract resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->