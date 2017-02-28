<?xml version="1.0" encoding="UTF-8"?>
<structure version="13" htmlmode="strict" relativeto="*SPS" encodinghtml="UTF-8" encodingrtf="ISO-8859-1" encodingpdf="UTF-8" useimportschema="1" embed-images="1" ShowDesignMarkups="2" enable-authentic-scripts="1" authentic-scripts-in-debug-mode-external="0" generated-file-location="DEFAULT">
	<parameters/>
	<schemasources>
		<namespaces/>
		<schemasources>
			<xsdschemasource name="XML" main="1" schemafile="Акт осмотра.xsd" workingxmlfile="Акт осмотра.xml"/>
		</schemasources>
	</schemasources>
	<modules/>
	<flags>
		<scripts/>
		<globalparts/>
		<designfragments>
			<designfragment match="Template1" isactive="0"/>
		</designfragments>
		<pagelayouts/>
		<xpath-functions/>
	</flags>
	<scripts>
		<script language="javascript"/>
	</scripts>
	<script-project>
		<Project version="1" app="AuthenticView"/>
	</script-project>
	<importedxslt>
		<file url="СтильФакт"/>
	</importedxslt>
	<globalstyles/>
	<mainparts>
		<children>
			<globaltemplate subtype="main" match="/">
				<document-properties/>
				<children>
					<documentsection>
						<properties columncount="1" columngap="0.50in" headerfooterheight="fixed" pagemultiplepages="0" pagenumberingformat="1" pagenumberingstartat="auto" pagestart="next" paperheight="11in" papermarginbottom="0.79in" papermarginfooter="0.30in" papermarginheader="0.30in" papermarginleft="0.60in" papermarginright="0.60in" papermargintop="0.79in" paperwidth="8.50in"/>
					</documentsection>
					<layout-container locksize="1" blueprint-image-url="АКТ осмотра_01.tif">
						<styles height="3.50in" overflow="hidden" position="relative" width="5in"/>
						<children>
							<textbox autoresize="1" additional-width="20%" additional-height="10%">
								<styles font-family="@Arial Unicode MS" font-size="small" font-style="normal" font-variant="normal" font-weight="normal" height="0.21in" left="4.20in" overflow="hidden" padding="2px" position="absolute" top="0.20in" width="2.18in"/>
								<children>
									<template subtype="source" match="XML">
										<children>
											<template subtype="element" match="Расчет">
												<children>
													<template subtype="element" match="Данные_расчета">
														<children>
															<template subtype="element" match="НомерАкта">
																<children>
																	<content/>
																</children>
																<variables/>
															</template>
														</children>
														<variables/>
													</template>
												</children>
												<variables/>
											</template>
										</children>
										<variables/>
									</template>
								</children>
							</textbox>
							<textbox autoresize="1" additional-width="20%" additional-height="10%">
								<styles height="0.22in" left="1.60in" overflow="hidden" padding="2px" position="absolute" top="0.60in" width="1.81in"/>
								<children>
									<template subtype="source" match="XML">
										<children>
											<template subtype="element" match="Расчет">
												<children>
													<template subtype="element" match="Данные_расчета">
														<children>
															<template subtype="element" match="Дата">
																<children>
																	<content>
																		<styles font-family="Arial"/>
																	</content>
																</children>
																<variables/>
															</template>
														</children>
														<variables/>
													</template>
												</children>
												<variables/>
											</template>
										</children>
										<variables/>
									</template>
								</children>
							</textbox>
							<textbox autoresize="1" additional-width="20%" additional-height="10%">
								<styles height="0.77in" left="0in" overflow="hidden" padding="2px" position="absolute" top="1.40in" width="9.55in"/>
								<children>
									<tgrid>
										<properties border="1"/>
										<children>
											<tgridbody-cols>
												<children>
													<tgridcol/>
													<tgridcol/>
													<tgridcol/>
													<tgridcol/>
													<tgridcol/>
												</children>
											</tgridbody-cols>
											<tgridheader-rows>
												<children>
													<tgridrow>
														<children>
															<tgridcell>
																<children>
																	<text fixtext="Номер_позиции"/>
																</children>
															</tgridcell>
															<tgridcell>
																<children>
																	<text fixtext="Наименование_детали"/>
																</children>
															</tgridcell>
															<tgridcell>
																<children>
																	<text fixtext="Код_детали"/>
																</children>
															</tgridcell>
															<tgridcell>
																<children>
																	<text fixtext="Цена_руб"/>
																</children>
															</tgridcell>
															<tgridcell>
																<children>
																	<text fixtext="Тип_ремонта"/>
																</children>
															</tgridcell>
														</children>
													</tgridrow>
												</children>
											</tgridheader-rows>
											<tgridbody-rows>
												<children>
													<template subtype="source" match="XML">
														<children>
															<template subtype="element" match="Калькуляцияремонта">
																<children>
																	<template subtype="element" match="Замена">
																		<children>
																			<tgridrow>
																				<children>
																					<tgridcell>
																						<children>
																							<template subtype="element" match="Номер_позиции">
																								<children>
																									<content>
																										<format basic-type="xsd" datatype="unsignedShort"/>
																									</content>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<children>
																							<template subtype="element" match="Наименование_детали">
																								<children>
																									<content/>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<children>
																							<template subtype="element" match="Код_детали">
																								<children>
																									<content/>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<children>
																							<template subtype="element" match="Цена_руб">
																								<children>
																									<content>
																										<format basic-type="xsd" datatype="unsignedShort"/>
																									</content>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<children>
																							<template subtype="element" match="Тип_ремонта">
																								<children>
																									<content/>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</tgridcell>
																				</children>
																			</tgridrow>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
														<variables/>
													</template>
												</children>
											</tgridbody-rows>
										</children>
									</tgrid>
								</children>
							</textbox>
							<textbox autoresize="1" additional-width="20%" additional-height="10%">
								<styles height="0.77in" left="0in" overflow="hidden" padding="2px" position="absolute" top="2.80in" width="8.92in"/>
								<children>
									<tgrid>
										<properties border="1"/>
										<children>
											<tgridbody-cols>
												<children>
													<tgridcol/>
													<tgridcol/>
													<tgridcol/>
													<tgridcol/>
												</children>
											</tgridbody-cols>
											<tgridheader-rows>
												<children>
													<tgridrow>
														<children>
															<tgridcell>
																<children>
																	<text fixtext="Наименование_детали"/>
																</children>
															</tgridcell>
															<tgridcell>
																<children>
																	<text fixtext="Номер_позиции"/>
																</children>
															</tgridcell>
															<tgridcell>
																<children>
																	<text fixtext="Тип_ремонта"/>
																</children>
															</tgridcell>
															<tgridcell>
																<children>
																	<text fixtext="Время_ремонта_час"/>
																</children>
															</tgridcell>
														</children>
													</tgridrow>
												</children>
											</tgridheader-rows>
											<tgridbody-rows>
												<children>
													<template subtype="source" match="XML">
														<children>
															<template subtype="element" match="Калькуляцияремонта">
																<children>
																	<template subtype="element" match="Ремонт">
																		<children>
																			<tgridrow>
																				<children>
																					<tgridcell>
																						<children>
																							<template subtype="element" match="Наименование_детали">
																								<children>
																									<content/>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<children>
																							<template subtype="element" match="Номер_позиции">
																								<children>
																									<content>
																										<format basic-type="xsd" datatype="unsignedShort"/>
																									</content>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<children>
																							<template subtype="element" match="Тип_ремонта">
																								<children>
																									<content/>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</tgridcell>
																					<tgridcell>
																						<children>
																							<template subtype="element" match="Время_ремонта_час">
																								<children>
																									<content>
																										<format basic-type="xsd" datatype="unsignedByte"/>
																									</content>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</tgridcell>
																				</children>
																			</tgridrow>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
														<variables/>
													</template>
												</children>
											</tgridbody-rows>
										</children>
									</tgrid>
								</children>
							</textbox>
						</children>
					</layout-container>
				</children>
			</globaltemplate>
		</children>
	</mainparts>
	<globalparts/>
	<designfragments>
		<children>
			<globaltemplate subtype="named" match="Template1">
				<parameters/>
			</globaltemplate>
		</children>
	</designfragments>
	<xmltables/>
	<authentic-custom-toolbar-buttons/>
</structure>
