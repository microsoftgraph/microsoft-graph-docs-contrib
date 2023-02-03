---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.plannerTaskConfiguration"
	EditPolicy = @{
		Rules = @(
			@{
				DefaultRule = "block"
				Role = @{
					"@odata.type" = "#microsoft.graph.plannerRelationshipBasedUserType"
					RoleKind = "relationship"
					Role = "defaultRules"
				}
				PropertyRule = @{
					PercentComplete = @(
						"allow"
					)
					RuleKind = "taskRule"
					Assignments = @{
						DefaultRules = @(
							"addSelf"
						)
						Overrides = @(
						)
					}
				}
			}
			@{
				DefaultRule = "block"
				Role = @{
					"@odata.type" = "#microsoft.graph.plannerRelationshipBasedUserType"
					RoleKind = "relationship"
					Role = "taskAssignees"
				}
				PropertyRule = @{
					StartDate = @(
						"allow"
					)
					DueDate = @(
						"allow"
					)
					PercentComplete = @(
						"allow"
					)
					Order = @(
						"allow"
					)
					RuleKind = "taskRule"
					References = @{
						DefaultRules = @(
							"allow"
						)
						Overrides = @(
							@{
								Name = "userCreated"
								Rules = @(
									"allow"
								)
							}
							@{
								Name = "applicationCreated"
								Rules = @(
									"block"
								)
							}
						)
					}
					CheckLists = @{
						DefaultRules = @(
							"allow"
						)
						Overrides = @(
							@{
								Name = "userCreated"
								Rules = @(
									"allow"
								)
							}
							@{
								Name = "applicationCreated"
								Rules = @(
									"check"
								)
							}
						)
					}
					Assignments = @{
						DefaultRules = @(
							"block"
						)
						Overrides = @(
							@{
								Name = "userCreated"
								Rules = @(
									"removeSelf"
								)
							}
							@{
								Name = "applicationCreated"
								Rules = @(
									"check"
								)
							}
						)
					}
					AppliedCategories = @{
						DefaultRules = @(
							"allow"
						)
						Overrides = @(
						)
					}
				}
			}
		)
	}
}

Update-MgBusinessScenarioPlannerTaskConfiguration -BusinessScenarioId $businessScenarioId -BodyParameter $params

```