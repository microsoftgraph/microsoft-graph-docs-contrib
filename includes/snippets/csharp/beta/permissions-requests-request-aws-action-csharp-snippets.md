---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ScheduledPermissionsRequest
{
	RequestedPermissions = new AwsPermissionsDefinition
	{
		OdataType = "microsoft.graph.awsPermissionsDefinition",
		AuthorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem
		{
			AuthorizationSystemId = "956987887735",
			AuthorizationSystemType = "AWS",
		},
		ActionInfo = new AwsActionsPermissionsDefinitionAction
		{
			OdataType = "microsoft.graph.awsActionsPermissionsDefinitionAction",
			Statements = new List<AwsStatement>
			{
				new AwsStatement
				{
					StatementId = "test1",
					Actions = new List<string>
					{
						"s3:AbortMultipartUpload",
						"s3:CreateBucket",
					},
					NotActions = new List<string>
					{
					},
					Resources = new List<string>
					{
						"*",
					},
					NotResources = new List<string>
					{
					},
					Effect = AwsStatementEffect.Allow,
					Condition = new AwsCondition
					{
						AdditionalData = new Dictionary<string, object>
						{
							{
								"NumericLessThanEquals" , new 
								{
									AwsMultiFactorAuthAge = "3600",
								}
							},
						},
					},
				},
				new AwsStatement
				{
					StatementId = "test2",
					Actions = new List<string>
					{
						"s3:Delete:*",
					},
					NotActions = new List<string>
					{
					},
					Resources = new List<string>
					{
						"*",
					},
					NotResources = new List<string>
					{
					},
					Effect = AwsStatementEffect.Allow,
					Condition = new AwsCondition
					{
						AdditionalData = new Dictionary<string, object>
						{
							{
								"NumericLessThanEquals" , new 
								{
									AwsMultiFactorAuthAge = "3600",
								}
							},
						},
					},
				},
			},
			AssignToRoleId = "arn:aws:iam::956987887735:role/ck-saml-power-user",
		},
		IdentityInfo = new PermissionsDefinitionAuthorizationSystemIdentity
		{
			ExternalId = "rsn:alex@contoso.com",
			Source = new SamlIdentitySource
			{
				OdataType = "microsoft.graph.samlIdentitySource",
			},
			IdentityType = PermissionsDefinitionIdentityType.User,
		},
	},
	Justification = "I need to do this because I want to access S3 resources",
	Notes = "Please",
	ScheduleInfo = new RequestSchedule
	{
		StartDateTime = DateTimeOffset.Parse("2023-02-08T12:15:00Z"),
		Expiration = new ExpirationPattern
		{
			Duration = TimeSpan.Parse("PT1H"),
		},
		Recurrence = new PatternedRecurrence
		{
			Pattern = new RecurrencePattern
			{
				DayOfMonth = 5,
				DaysOfWeek = new List<DayOfWeekObject>
				{
				},
				Interval = 1,
				AdditionalData = new Dictionary<string, object>
				{
					{
						"reccurencePatternType" , "absoluteMonthly"
					},
				},
			},
			Range = new RecurrenceRange
			{
				StartDate = new Date(DateTime.Parse("2023-02-08")),
				AdditionalData = new Dictionary<string, object>
				{
					{
						"reccurenceRangeType" , "noEnd"
					},
				},
			},
		},
	},
	TicketInfo = new TicketInfo
	{
		TicketNumber = "INC1234567",
		TicketSystem = "ServiceNow",
		TicketSubmitterIdentityId = "alex@contoso.com",
		TicketApproverIdentityId = "alexmanager@contoso.com",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.PermissionsManagement.ScheduledPermissionsRequests.PostAsync(requestBody);


```