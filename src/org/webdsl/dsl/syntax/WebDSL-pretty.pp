[
   HqlQuery -- _1,
   DslExp -- _1,

   Module -- V[H[KW["module"] _1] _2],

   Imports -- H[KW["imports"] _1],

   Qualified                          -- H hs=0[_1 KW["."] _2],
   Application                        -- V vs=1[H[KW["application"] _1] _2],
   Application.2:iter-star            -- _1,
   Section                            -- V is=2 vs=1 [H[KW["section"] _1 KW["."]] _2],
   Section.1:iter                     -- _1,
   Section.2:iter-star                -- _1,
   Description                        -- V[V is=2[H[KW["description"] KW["{"]] HV[_1]] KW["}"]],
   Note                               -- V[V is=2[KW["note"] HV[_1]] KW["end"]],
   GlobalsDefinition                  -- KW["globals"] KW["{"] _1 KW["}"],
   Entity                             -- V[V is=2[H[KW["entity"] _1 KW[":"] _2 KW["{"]] _3 _4] KW["}"]],
   Entity.4:iter-star                 -- _1,
   EntityNoSuper                      -- V[V is=2[H[KW["entity"] _1 KW["{"]] _2 _3] KW["}"]],
   EntityNoSuper.3:iter-star          -- _1,
   SessionEntity                      -- V[V is=2[H[KW["session"] _1 KW["{"]] _2 _3] KW["}"]],
   SessionEntity.2:iter-star          -- _1,
   SessionEntity.3:iter-star          -- _1,
   ExtendEntity                       -- V[V is=2[H[KW["extend"] KW["entity"] _1 KW["{"]] _2 _3] KW["}"]],
   ExtendSessionEntity                -- KW["extend"] KW["session"] _1 KW["{"] _2 _3 KW["}"],
   Property                           -- H[_1 _2 _3 KW["("] _4 KW[")"]],
   Property.4:iter-star-sep           -- H hs=0[_1 KW[","]],
   PropertyNoAnno                     -- H[_1 _2 _3],
   DerivedProperty                    -- H[_1 _2 _3 KW["("] _4 KW[")"] KW[":="] _5],
   DerivedProperty.4:iter-star-sep    -- H hs=0[_1 KW[","]],
   DerivedPropertyNoAnno              -- H[_1 _2 _3 KW[":="] _4],
   Enum                               -- H[ KW["enum"] _1 KW["{"] _2 KW["}"] ],
   Enum.2:iter-star-sep               -- H hs=0[_1 "(" _2 ")" KW[","]],
   Simple                             -- KW["::"],
   Ref                                -- KW["->"],
   Comp                               -- KW["<>"],
   SimpleSort                         -- _1,
   GenericSort                        -- H hs=0[_1 KW["<"] _2 KW[">"]],
   GenericSort.2:iter-sep             -- H hs=0[_1 KW[","]],
   SimpleAnno                         -- _1,
   InverseAnno			      -- KW["inverse"] KW["="] _1 KW["."] _2,
   InverseSlaveAnno		      -- KW["inverseSlave"] KW["="] _1 KW["."] _2,
   InlineAnno		              	      -- KW["inline"] KW["("] _1 KW[")"],
   InlineAnno.1:iter-stat-sep         -- _1 KW[","],
   ParamAnno                          -- _1 KW["("] _2 KW[")"],
   ParamAnno.2:iter-star-sep          -- _1 KW[","],
   Define                             -- V[ V is=2[H[KW["define"] _1 _2 H hs=0[KW["("] H[_3] KW[")"]] KW["{"]] _4] KW["}"] ],
   Define.1:iter-star                 -- _1,
   Define.3:iter-star-sep             -- H hs=0[_1 KW[","]],
   Define.4:iter-star                 -- _1,
   Page                               -- KW["page"],
   Email                              -- KW["email"],
   Template                           -- KW["template"],
   Local                              -- KW["local"],
   Feed                               -- KW["feed"],
   Arg                                -- H[_1 KW[":"] _2],
   Text                               -- H hs=0[ "\"" _1 "\"" ],

   For                                          -- V[ V is=2[ H[KW["for"] KW["("] _1 KW[":"] _2 KW["in"] _3 _4 KW[")"] KW["{"]] _5 ] KW["}"] ],
   For.5:iter-star                              -- _1,
   ForNoFilter                                  -- V[ V is=2[ H[KW["for"] KW["("] _1 KW[":"] _2 KW["in"] _3 KW[")"] KW["{"]] _4 ] KW["}"] ],
   ForNoFilter.4:iter-star                      -- _1,
   ForAll                                       -- V[ V is=2[ H[KW["for"] KW["("] _1 KW[":"] _2 _3 KW[")"] KW["{"]] _4 ] KW["}"] ],
   ForAll.4:iter-star                           -- _1,
   ForAllNoFilter                               -- V[ V is=2[ H[KW["for"] KW["("] _1 KW[":"] _2 KW[")"] KW["{"]] _3 ] KW["}"] ],
   ForAllNoFilter.3:iter-star                   -- _1,
   PagedForAll                                  -- V[ V is=2[ H[KW["for"] KW["("] _1 KW[":"] _2 KW["per"] _3 KW[")"] KW["{"]] _4 ] KW["}"] ],
   PagedForAll.4:iter-star                      -- _1,
   PagedFor                                  -- V[ V is=2[ H[KW["for"] KW["("] _1 KW[":"] _2 KW["in"] _3 KW["per"] _4 KW[")"] KW["{"]] _5 ] KW["}"] ],
   PagedFor.5:iter-star                      -- _1,

   Subtable                           -- V[ V is=2[ H[KW["subtable"] KW["("] _1 KW[":"] _2 KW["in"] _3 KW[")"] KW["{"] ] _4 ] KW["}"]],
   IfTempl                            -- V[ V is=2[ H[KW["if"] KW["("] _1 KW[")"] KW["{"] ] _2 ] KW["}"] KW["else"] KW["{"] _3 KW["}"] ],
   IfTempl.2:iter-star                -- _1,
   IfTempl.3:iter-star                -- _1,
   IfNoElseTempl                      -- V[ V is=2[ H[KW["if"] KW["("] _1 KW[")"] KW["{"] ] _2 ] KW["}"]],
   IfNoElseTempl.2:iter-star          -- _1,
   Select                             -- H[KW["select"] KW["("] _1 KW[":"] _2 KW[","] _3 KW[","] _4 KW[")"]],
   SelectFromList                     -- H[KW["select"] KW["("] _1 KW["from"] _2 KW[")"]],
   TemplateCallNoArgs                 -- _1,
   True				                        -- KW["true"],
   False			                        -- KW["false"],
   Null                               -- KW["null"],
   TemplateCallNoBody                 -- H hs=0[_1 KW["("] H[_2] KW[")"]],
   TemplateCallNoBody.2:iter-star-sep -- H hs=0[_1 KW[","]],
   TemplateCallNoBody.2:iter-star			-- _1,
   TemplateCallBody                   -- V[ V is=2[H[_1 KW["{"]] _2] KW["}"]],
   TemplateCallBody.2:iter-star       -- _1,
   TemplateCallBody.2:iter-star-sep -- H hs=0[_1 KW[","]],   
   TemplateCall                       -- V[ V is=2[ H hs=0[ _1 KW["("] H[_2] KW[")"] KW["["] H[_3] KW["]"] KW["{"]] _4] KW["}"]],
   TemplateCall.2:iter-star-sep       -- H hs=0[_1 KW[","]],
   TemplateCall.3:iter-star-sep       -- H hs=0[_1 KW[","]],
   TemplateCall.4:iter-star-sep       -- H hs=0[_1 KW[","]],
   TemplateCall.2:iter-star           -- _1,
   TemplateCall.3:iter-star           -- _1,
   TemplateCall.4:iter-star           -- _1,
   TemplateCallPropsNoArgs.3:iter-star  -- _1,
   TemplateCallPropsNoArgs.3:iter-star-sep -- H hs=0[_1 KW[","]],
   TemplateCallPropsNoArgs.2:iter-star  -- _1,
   TemplateCallPropsNoArgs.2:iter-star-sep -- H hs=0[_1 KW[","]],
   TemplateCallPropsNoArgs						-- V[V is=2[ H hs=0 [ _1 KW["["] H[_2] KW["]"] KW["{"] H[_3] KW["}"]]]],
   TemplateCallProps.2:iter-star-sep   -- H hs=0[_1 KW[","]],
   TemplateCallProps.2:iter-star      -- _1,    
   TemplateCallProps									-- V[ V is=2[ H hs=0[ _1 KW["["] H[_2] KW["]"]]]],
   TemplateCallPropsNoBody.3:iter-star-sep -- H hs=0[_1 KW[","]],
   TemplateCallPropsNoBody.3:iter-star -- _1, 
   TemplateCallPropsNoBody.2:iter-star-sep -- H hs=0[_1 KW[","]],
   TemplateCallPropsNoBody.2:iter-star -- _1,
   TemplateCallPropsNoBody						-- V[ V is=2[ H hs=0[ _1 KW["("] H[_2] KW[")"] KW["["] H[_3] KW["]"]]]],
   TemplateCallNoAssigns.3:iter-star  -- _1,
   TemplateCallNoAssigns.3:iter-star-sep -- H hs=0[_1 KW[","]],
   TemplateCallNoAssigns.2:iter-star  -- _1,
   TemplateCallNoAssigns.2:iter-star-sep -- H hs=0[_1 KW[","]],
   TemplateCallNoAssigns							-- V[ V is=2[ H hs=0[ _1 KW["("] H[_2] KW[")"] KW["{"] H[_3] KW["}"]]]],
   TemplateCallNoArgs									-- _1,
 
   TemplateCallDeclaredType.4:iter-star -- _1,
   TemplateCallDeclaredType           -- _1 _2 _3 _4,
   Action                             -- V[ H[KW["action"] _1 KW["("] _2 KW[")"]] _3 ],
   Action.2:iter-star-sep             -- H hs=0[_1 KW[","]],
   AjaxAction													-- H[ _1 _2 KW["<<"] _3 KW[";"]],
   InlineAjaxAction										-- H[ KW["@"] _1 _2 KW["<<"] _3 ],
   InlineTemplateCallNoBlock					-- H[ KW["@"] KW ["\\"] _1],
   InlineTemplateCall									-- H[ KW["@"] KW ["{"] _1 KW["}"]],
   InlineTemplateCall.1:iter-star-sep -- H hs=0[_1 KW[","]],
   InlineTemplateCall.1:iter-star     -- _1,
   InitAction                         -- V[ H[KW["init"]] _1],
   Function                           -- V[ H[KW["function"] _1 KW["("] _2 KW[")"] KW[":"] _3] _4 ],
   Function.3:iter-star-sep           -- H hs=0[_1 KW[","]],
   FunctionNoReturn                   -- V[ H[KW["function"] _1 KW["("] _2 KW[")"]] _3 ],
   FunctionNoReturn.2:iter-star-sep   -- H hs=0[_1 KW[","]],
   ExtendFunction                     -- KW["extend"] _1,
   Block                              -- V  [V is=2 [KW["{"] _1] KW["}"]],
   Block.1:iter-star                  -- _1,
   Assign                             -- H hs=0[H[_1] KW[";"]],
   Stat                               -- H hs=0[H[_1] KW[";"]],
   Return                             -- H[KW["return"] H hs=0[H[_1] KW[";"]]],
   ReturnEmpty												-- H[KW["return"] KW[";"]],
   Cancel                             -- H[KW["cancel"] H hs=0[H[_1] KW[";"]]],
   GoTo							              	  -- H[KW["goto"] H hs=0[H[_1] KW[";"]]],
   Schedule	          							  -- KW["schedule"] _1 KW["for"] _2,
   ScheduleNoFor       							  -- KW["schedule"] _1,
   VarDeclInit                        -- H[KW["var"] _1 KW[":"] _2 KW[":="] _3 KW[";"]],
   VarDecl                            -- H[KW["var"] _1 KW[":"] _2 KW[";"]],
   If                                 -- V[H[KW["if"] KW["("] _1 KW[")"]] _2 KW["else"] _3],
   IfNoElse                           -- H[KW["if"] KW["("] _1 KW[")"]] _2,

   Filter                             -- KW["where"] _1 KW["order"] KW["by"] _2 _3,
   FilterNoOrderByNoLimit             -- KW["where"] _1,
   FilterNoWhereNoLimit               -- KW["order"] KW["by"] _1, 
   FilterNoLimit                      -- KW["where"] _1 KW["order"] KW["by"] _2,
   FilterNoOrderBy                    -- KW["where"] _1 _2,
   Filter                             -- KW["order"] KW["by"] _1 _2,
   Filter                             -- _1,
   OrderNonSpecific                   -- _1,
   OrderAscending                     -- _1 KW["asc"],
   OrderDescending                    -- _1 KW["desc"],
   Limit                              -- KW["limit"] _1 KW["offset"] _2,

   ForStmt                            -- V[H[KW["for"] KW["("] _1 KW[":"] _2 KW["in"] _3 _4 KW[")"] ] _5],
   ForStmt.5:iter-star                -- _1,
   ForStmtNoFilter                    -- V[H[KW["for"] KW["("] _1 KW[":"] _2 KW["in"] _3 KW[")"] ] _4],
   ForAllStmt                         -- V[H[KW["for"] KW["("] _1 KW[":"] _2 _3 KW[")"] ] _4],
   ForAllStmt.4:iter-star             -- _1,
   ForAllStmtNoFilter                 -- V[H[KW["for"] KW["("] _1 KW[":"] _2 KW[")"] ] _3],

   ForExp                             -- H[KW["["] _1 KW["|"] _2 KW[":"] _3 KW["in"] _4 _5 KW["]"]],
   ForExpNoFilter                     -- H[KW["["] _1 KW["|"] _2 KW[":"] _3 KW["in"] _4 KW["]"]],
   AndForExp                          -- KW["And"] _1,
   OrForExp                           -- KW["Or"] _1,
   Rules                              -- V  [H  [KW["rules"]] _1],
   Rules.1:iter-star                  -- _1,
   Equation                           -- H[_1 KW["="] _2],
   Int                                -- _1,
   Float                              -- _1,
   String                             -- H hs=0[ _1 ],
   Var                                -- _1,
   ExternalScopeVar                   -- KW["externalscope"] KW["."] _1,
   FieldAccess                        -- H hs=0[_1 KW["."] _2],
   ObjectCreation                     -- H hs=0[_1 KW["{"] H[_2] KW["}"]],
   ObjectCreation.2:iter-star         -- _1,
   Assignment                         -- H[_1 KW[":="] _2],
   PropertyAssignment				  -- H[_1 KW[":="] _2],
   ObjectPropertyAssignment			  -- H[_1 KW[":="] _2],
   MapCreation                        -- V  [V vs=2 [KW["["] _1] KW["]"]],
   MapCreation.1:iter-star            -- _1,
   Mapping                            -- _1 KW["->"] _2,
   ListCreation                       -- H hs=0[KW["["] H[_1] KW["]"]],
   ListCreation.1:iter-star-sep       -- H hs=0[_1 KW[","]],
   SetCreation                        -- H hs=0[KW["{"] H[_1] KW["}"]],
   SetCreation.1:iter-star-sep        -- H hs=0[_1 KW[","]],
   TypedListCreation                  -- H hs=0[KW["List"] KW["<"] H[_1] KW[">"] KW["("] _2 KW[")"]],
   TypedListCreation.2:iter-star-sep  -- H hs=0[_1 KW[","]],
   TypedSetCreation                   -- H hs=0[KW["Set"] KW["<"] H[_1] KW[">"] KW["("] _2 KW[")"]],
   TypedSetCreation.2:iter-star-sep   -- H hs=0[_1 KW[","]],
   ThisCall                           -- H hs=0[_1 KW["("] H[_2] KW[")"]],
   ThisCall.2:iter-star-sep           -- H hs=0[_1 KW[","]],
   Call                               -- H hs=0[_1 KW["."] _2 KW["("] H[_3] KW[")"]],
   Call.3:iter-star-sep               -- H hs=0[_1 KW[","]],
   InColl                             -- _1 KW["in"] _2,
   Eq                                 -- _1 KW["=="] _2,
   NotEq                              -- _1 KW["!="] _2,
   LargerThan                         -- _1 KW[">"] _2,
   LargerThanOrEqual                  -- _1 KW[">="] _2,
   SmallerThan                        -- _1 KW["<"] _2,
   SmallerThanOrEqual                 -- _1 KW["<="] _2,
   Add                                -- _1 KW["+"] _2,
   Sub                                -- _1 KW["-"] _2,
   Mul                                -- _1 KW["*"] _2,
   Mod                                -- _1 KW["%"] _2,
   Div                                -- _1 KW["/"] _2,
   And                                -- _1 KW["&&"] _2,
   Or                                 -- _1 KW["||"] _2,
   Not                                -- KW["!"] _1,
   IsA                                -- _1 KW["is"] KW["a"] _2,
   Cast                               -- H[_1 KW["as"] _2],
   None                               -- KW["None()"], %% Shoudl never apear


    %%access control syntax
   ValidationAnnoLength                         -- KW["length"] KW["("] _1 KW[","] _2 KW[")"],
   ValidationAnnoMinLength                      -- KW["minlength"] KW["("] _1 KW[")"],
   ValidationAnnoMaxLength                      -- KW["maxlength"] KW["("] _1 KW[")"],
   ValidationAnnoNotEmpty                       -- KW["notempty"],
   ValidationAnnoEmail                          -- KW["email"],
   ValidationAnnoCreditCardNumber               -- KW["creditcardnumber"],
   ValidationAnnoEAN                            -- KW["EAN"],
   ValidationAnnoPattern                        -- KW["pattern"] KW["("] _1 KW[")"],
   ValidationAnnoPatternWithFlags               -- KW["pattern"] KW["("] _1 KW[","] _2 KW[")"],
   ValidationAnnoPatternWithFlags.2:iter-star   -- _1,
   FlagCanonEq                                  -- KW["canonicalequivalence"],
   FlagCaseInsensitive                          -- KW["caseinsensitive"],
   FlagComments                                 -- KW["comments"],
   FlagDotAll                                   -- KW["dotall"],
   FlagLiteral                                  -- KW["literal"],
   FlagMultiline                                -- KW["multiline"],
   FlagUnicodeCase                              -- KW["unicodecase"],
   FlagUnixLines                                -- KW["unixlines"],
   ValidationAnnoMax                            -- KW["max"] KW["("] _1 KW[")"],
   ValidationAnnoMin                            -- KW["min"] KW["("] _1 KW[")"],
   ValidationAnnoRange                          -- KW["range"] KW["("] _1 KW[","] _2 KW[")"],
   ValidationAnnoMinRange                       -- KW["minrange"] KW["("] _1 KW[")"],
   ValidationAnnoMaxRange                       -- KW["maxrange"] KW["("] _1 KW[")"],
   ValidationAnnoDigits                         -- KW["digits"] KW["("] _1 KW[","] _2 KW[")"],
   ValidationAnnoPast                           -- KW["past"],
   ValidationAnnoFuture                         -- KW["future"],
   ValidationAnnoSize                           -- KW["size"] KW["("] _1 KW[","] _2 KW[")"],
   ValidationAnnoMinSize                        -- KW["minsize"] KW["("] _1 KW[")"],
   ValidationAnnoMaxSize                        -- KW["maxsize"] KW["("] _1 KW[")"],
   ValidationAnnoNotNull                        -- KW["notnull"],
   ValidationAnnoAssertTrue                     -- KW["asserttrue"],
   ValidationAnnoAssertFalse                    -- KW["assertfalse"],
   ValidationAnnoValid                          -- KW["valid"],
   AccessControlDefinition                      -- V is=2[ H[KW["access"] KW["control"] KW["rules"]] _1 _2],
   AccessControlDefinition.1:opt                -- _1,
   AccessControlDefinition.2:iter-star          -- _1,
   AccessControlDefinition                      -- V [ V is=2[H[KW["access"] KW["control"] KW["rules"] KW["{"]] _1 _2] KW["}"] ],
   AccessControlDefinition.1:opt                -- _1,
   AccessControlDefinition.2:iter-star          -- _1,
   AccessControlPrincipal                       -- KW["principal"] KW["is"] _1 KW["with"] KW["credentials"] _2,
   AccessControlPrincipal.2:iter-sep            -- _1 KW[","],
   AccessControlPrincipal                       -- KW["principal"] KW["is"] _1 KW["with"] KW["credentials"] _2,
   AccessControlPrincipal.2:iter-sep            -- _1 KW[","],
   AccessControlRule                            -- V[ V is=2[H[KW["rule"] _1 _2 KW["("] _3 KW[")"] KW["{"]] H[_4] H[_5]] KW["}"]],
   AccessControlRule.5:iter-star                -- _1,
   AccessControlRule                            -- V[ V is=2[H[KW["rules"] _1 _2 KW["("] _3 KW[")"] KW["{"]] H[_4] H[_5]] KW["}"]],
   AccessControlRule.5:iter-star                -- _1,
   MatchArgs                                    -- H[_1 _2],
   MatchArgs.1:iter-star-sep                    -- _1 KW[","],
   MatchArgs.2:opt                              -- _1,
   MatchArgs                                    -- H[_1 _2],
   MatchArgs.1:iter-star-sep                    -- _1 KW[","],
   MatchArgs.2:opt                              -- _1,
   Predicate                                    -- KW["predicate"] _1 KW["("] _2 KW[")"] KW["{"] _3 KW["}"],
   Predicate.2:iter-star-sep                    -- _1 KW[","],
   Predicate                                    -- KW["predicate"] _1 KW["("] _2 KW[")"] KW["{"] _3 KW["}"],
   Predicate.2:iter-star-sep                    -- _1 KW[","],
   AccessControlPointcutElement                 -- _1 _2 KW["("] _3 _4 KW[")"],
   AccessControlPointcutElement.3:iter-star-sep -- _1 KW[","],
   AccessControlPointcutElement.4:opt           -- _1,
   AccessControlPointcut                        -- KW["pointcut"] _1 KW["("] _2 KW[")"] KW["{"] _3 KW["}"],
   AccessControlPointcut.2:iter-star-sep        -- _1 KW[","],
   AccessControlPointcut.3:iter-star-sep        -- _1 KW[","],
   ACPolicy                                     -- KW["access"] KW["control"] KW["policy"] _1,
   PolicyAnd                                    -- _1 KW["AND"] _2,
   PolicyOr                                     -- _1 KW["OR"] _2,
   Name                                         -- _1,
   
   %%input validation
   Validator                                    -- KW["validator"] _1 KW["("] _2 KW[")"] KW["{"] _3 KW["}"] KW[":"] _4,
   Validator.2:iter-star-sep                    -- _1 KW[","],
   Validator.3:iter-star                        -- _1,
   ValidateCall                                 -- KW["validate"] _1 KW["("] _2 KW[")"],
   
   %%styling
   ThemeDefinition                              -- KW["theme"] _1 _2 KW["("] KW[")"] KW["{"] _3 KW["}"],
   ThemeDefinition.3:iter-star                  -- _1,
   StyleSection                                 -- KW["style"] _1 _2,
   StyleSection.2:iter-star                     -- _1,
   StyleDefinition                              -- V[ V is=2[ H[ _1 KW["{"] ] _2 ] KW["}" ] ],
   StyleDefinition.2:iter-star                  -- _1,
   Selector                                     -- H hs=1[ _1 _2 ],
   Selector.2:iter-star                         -- _1,
   Selector.2:iter-star.1:seq                   -- H hs=1[ _1 _2 _3 ],
   Selector.2:iter-star.1:seq.3:opt             -- _1,
   SimpleSelector                               -- H hs=1[ _1 _2 ],
   IdSimpleSelector                             -- H hs=0[ KW["#"] _1 ],
   ElemSimpleSelector                           -- _1,
   ClassSimpleSelector                          -- H hs=0[ KW["."] _1 ],
   SimpleSelector                               -- _1,
   SelectorAttribute                            -- H hs=0[ KW["."] _1 ],
   ChildCombinator                              -- KW[">"],
   DescendantCombinator                         -- KW[">>"],
   MatchDefinition                              -- H hs=0[ _1 KW["("] _2 KW[")"] ],
   StyleVarDecl                                 -- H hs=1[ KW["const"] _1 KW[":"] _2 KW[";"] ],
   StyleVarDeclInit                             -- H hs=1[ KW["const"] _1 KW[":"] _2 KW[":="] _3 KW[";"] ],
   StyleDeclaration                             -- H[ H hs=0[ _1 ] KW[":="] H hs=0[ _2 KW[";"] ] ],
   StyleProperty                                -- _1,
   StylePropertyValue                           -- H hs=0[ _1 KW["."] _2 ],
   StyleVar                                     -- _1,
   StyleValueExpression                         -- H hs=0[ H hs=0[ KW["("] _1 KW[")"] ] KW["."] _2 ],
   StyleAdd                                     -- H hs=1[ _1 KW["+"] _2],
   StyleSub                                     -- H hs=1[ _1 KW["-"] _2],
   StyleMul                                     -- H hs=1[ _1 KW["*"] _2],
   StyleDiv                                     -- H hs=1[ _1 KW["/"] _2],
   StyleValue                                   -- H hs=0[ _1 _2 ],
   StyleValue                                   -- _1,
   StyleValue                                   -- H hs=0[ _1 _2 ],
   StyleValue.2:iter                            -- _1,
   StyleValue                                   -- _1,
   StyleValue                                   -- _1,
   StyleValue                                   -- _1,
   StyleValueExtension                          -- H hs=0[ KW["."] _1 ],
   StyleSort                                    -- H hs=0[ _1 _2],
   StyleSort                                    -- _1,
   Uri                                          -- KW["url"] KW["("] _1 KW[")"],
   Hash                                         -- KW["#"] _1,
   LayoutSection                                -- V  [H  [KW["layout"]] _1],
   LayoutSection.1:iter-star                    -- _1,
   LayoutDefinition                             -- _1 _2 KW["{"] _3 KW["}"],
   LayoutDefinition.3:iter-star                 -- _1,
   LayoutDefinition                              -- V[ V is=2[ H[ _1 KW["{"] ] _2 ] KW["}" ] ],
   LayoutDefinition.2:iter-star                 -- _1,
   FloatStatement                               -- H hs=1[ KW["float"] KW["{"] _1 KW["}"] ],
   FloatStatement.1:iter-star                   -- _1,
   LayoutStatement                              -- _1 KW[";"],
   NamedLayoutExpression                        -- H hs=1[ H hs=0[ _1 KW[":"] ] KW["["] _2 KW["]"] ],
   LayoutExpression                             -- _1,
   LayoutExpression                             -- _1,

   %% Operations 
   Procedures                                   -- V is=2 vs=1 [H[KW["procedures"] _1] _2],
   Procedure                                    -- V[V is=2[H[KW["procedure"] _1 KW["("] _2 KW[")"] KW["{"]] _3 ] KW["}"]],
   AutoProcedure                                -- V[V is=2[H[KW["auto"] KW["procedure"] _1 KW["("] _2 KW[")"] KW["{"]] _3 ] KW["}"]],
   Procedure.2:iter-star-sep                    -- _1 KW[","],
   Procedure.3:iter-star                        -- _1,
   ProcedureWho                                 -- V[V is=2[H[KW["who"] KW["{"]] _1] KW["}"]],
   ProcedureWhen                                -- V[V is=2[H[KW["when"] KW["{"]] _1] KW["}"]],
   ProcedureDo                                  -- V[V is=2[H[KW["do"] KW["{"]] _1] KW["}"]],
   ProcedureDone                                -- V[V is=2[H[KW["done"] KW["{"]] _1] KW["}"]],
   ProcedureProcessed                           -- V[KW["processed"] _1],
   ProcedureEnabled                             -- V[V is=2[H[KW["enabled"] KW["{"]] _1] KW["}"]],
   ProcedureDisabled                            -- V[V is=2[H[KW["disabled"] KW["{"]] _1] KW["}"]],
   ProcedureView                                -- V[V is=2[H[KW["view"] KW["{"]] _1] KW["}"]],
   %% Derive
   Derive                                       -- H[KW["derive"] _1 KW["for"] _2 KW["("] _3 KW[")"]],
   Derive.3:iter-star-sep                       -- H[_1 KW[","]],
   Derive                                       -- H[KW["derive"] _1 KW["for"] _2],
   DeriveDefault                                -- _1,
   DeriveMode                                   -- H[_1 KW["("] _2 KW[")"]],
   EditPage                                     -- KW["editPage"],
   EditRows                                     -- KW["editRows"],
   ViewPage                                     -- KW["viewPage"],
   ViewRows                                     -- KW["viewRows"],
   ProcedureProcess                             -- V[ V is=2[ H[KW["process"] KW["{"] _1] ] KW["}"] ],
   ProcCall                                     -- _1 KW["("] _2 KW[")"],
   ProcSeq                                      -- _1 KW[";"] _2,
   ProcWhile                                    -- KW["while"] KW["("] _1 KW[")"] KW["{"] _2 KW["}"],
   ProcIfNoElse                                 -- KW["if"] KW["("] _1 KW[")"] _2,
   ProcIf                                       -- KW["if"] KW["("] _1 KW[")"] KW["{"] _2 KW["}"] KW["else"] KW["{"] _3 KW["}"],
   ProcXor                                      -- _1 KW["xor"] _2,
   ProcAnd                                      -- _1 KW["and"] _2,
   ProcPlus                                     -- _1 KW["+"] _2,
   ProcRepeatUntil                              -- KW["repeat"] KW["{"] _1 KW["}"] KW["until"] _2,
   RemoveMe                                     -- KW["RemoveMe"],
   ExtendProcedure                              -- V[V is=2[H[KW["extend"] KW["procedure"] _1 KW["("] _2 KW[")"] KW["{"]] _3 ] KW["}"]]
]
