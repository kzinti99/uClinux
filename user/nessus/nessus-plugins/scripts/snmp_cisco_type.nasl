#
# (C) Tenable Network Security
#

 desc["english"] = "
Synopsis :

The model of the remote CISCO router can be obtained by SNMP.

Description :

It is possible to determine the model of the remote CISCO system
by sending SNMP requests with the OID 1.3.6.1.4.1.9.1.

An attacker may use this information to gain more knowledge about
the remote host.

Solution : 

Disable the SNMP service on the remote host if you do not use it,
or filter incoming UDP packets going to this port.

Risk factor : 

Low";

if(description)
{
 script_id(10969);
 script_version ("$Revision: 1.11 $");
 
 name["english"] = "Obtain Cisco type via SNMP";
 
 script_name(english:name["english"]);
 
 script_description(english:desc["english"]);
 
 summary["english"] = "Enumerates Cisco model via SNMP";
 script_summary(english:summary["english"]);
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2005 Tenable Network Security");
 family["english"] = "SNMP";
 script_family(english:family["english"]);
 
 script_dependencie("snmp_sysDesc.nasl");
 script_require_keys("SNMP/community","SNMP/OID");
 exit(0);
}

include ("snmp_func.inc");

oid = get_kb_item("SNMP/OID");
if (!oid)
  exit (0);

if (!is_valid_snmp_product(manufacturer:"1.3.6.1.4.1.9.1", oid:oid))
  exit (0);

type = ereg_replace (pattern:"^1\.3\.6\.1\.4\.1\.9\.1\.([0-9]+)$", replace:"\1", string:oid);
type = int(type);

port = get_kb_item("SNMP/port");
if(!port)port = 161;

cisco[1] = "ciscoGatewayServer";
cisco[2] = "ciscoTerminalServer";
cisco[3] = "ciscoTrouter";
cisco[4] = "ciscoProtocolTranslator";
cisco[5] = "ciscoIGS";
cisco[6] = "cisco3000";
cisco[7] = "cisco4000";
cisco[8] = "cisco7000";
cisco[9] = "ciscoCS500";
cisco[10] = "cisco2000";
cisco[11] = "ciscoAGSplus";
cisco[12] = "cisco7010";
cisco[13] = "cisco2500";
cisco[14] = "cisco4500";
cisco[15] = "cisco2102";
cisco[16] = "cisco2202";
cisco[17] = "cisco2501";
cisco[18] = "cisco2502";
cisco[19] = "cisco2503";
cisco[20] = "cisco2504";
cisco[21] = "cisco2505";
cisco[22] = "cisco2506";
cisco[23] = "cisco2507";
cisco[24] = "cisco2508";
cisco[25] = "cisco2509";
cisco[26] = "cisco2510";
cisco[27] = "cisco2511";
cisco[28] = "cisco2512";
cisco[29] = "cisco2513";
cisco[30] = "cisco2514";
cisco[31] = "cisco2515";
cisco[32] = "cisco3101";
cisco[33] = "cisco3102";
cisco[34] = "cisco3103";
cisco[35] = "cisco3104";
cisco[36] = "cisco3202";
cisco[37] = "cisco3204";
cisco[38] = "ciscoAccessProRC";
cisco[39] = "ciscoAccessProEC";
cisco[40] = "cisco1000";
cisco[41] = "cisco1003";
cisco[42] = "cisco2516";
cisco[43] = "cisco1020";
cisco[44] = "cisco1004";
cisco[45] = "cisco7507";
cisco[46] = "cisco7513";
cisco[47] = "cisco7506";
cisco[48] = "cisco7505";
cisco[49] = "cisco1005";
cisco[50] = "cisco4700";
cisco[51] = "ciscoPro1003";
cisco[52] = "ciscoPro1004";
cisco[53] = "ciscoPro1005";
cisco[54] = "ciscoPro1020";
cisco[55] = "ciscoPro2500PCE";
cisco[56] = "ciscoPro2501";
cisco[57] = "ciscoPro2503";
cisco[58] = "ciscoPro2505";
cisco[59] = "ciscoPro2507";
cisco[60] = "ciscoPro2509";
cisco[61] = "ciscoPro2511";
cisco[62] = "ciscoPro2514";
cisco[63] = "ciscoPro2516";
cisco[64] = "ciscoPro2519";
cisco[65] = "ciscoPro2521";
cisco[66] = "ciscoPro4500";
cisco[67] = "cisco2517";
cisco[68] = "cisco2518";
cisco[69] = "cisco2519";
cisco[70] = "cisco2520";
cisco[71] = "cisco2521";
cisco[72] = "cisco2522";
cisco[73] = "cisco2523";
cisco[74] = "cisco2524";
cisco[75] = "cisco2525";
cisco[76] = "ciscoPro751";
cisco[77] = "ciscoPro752";
cisco[78] = "ciscoPro753";
cisco[81] = "cisco751";
cisco[82] = "cisco752";
cisco[83] = "cisco753";
cisco[84] = "ciscoPro741";
cisco[85] = "ciscoPro742";
cisco[86] = "ciscoPro743";
cisco[87] = "ciscoPro744";
cisco[88] = "ciscoPro761";
cisco[89] = "ciscoPro762";
cisco[92] = "ciscoPro765";
cisco[93] = "ciscoPro766";
cisco[94] = "cisco741";
cisco[95] = "cisco742";
cisco[96] = "cisco743";
cisco[97] = "cisco744";
cisco[98] = "cisco761";
cisco[99] = "cisco762";
cisco[102] = "cisco765";
cisco[103] = "cisco766";
cisco[104] = "ciscoPro2520";
cisco[105] = "ciscoPro2522";
cisco[106] = "ciscoPro2524";
cisco[107] = "ciscoLS1010";
cisco[108] = "cisco7206";
cisco[109] = "ciscoAS5200";
cisco[110] = "cisco3640";
cisco[111] = "ciscoCatalyst3500";
cisco[112] = "ciscoWSX3011";
cisco[113] = "cisco1601";
cisco[114] = "cisco1602";
cisco[115] = "cisco1603";
cisco[116] = "cisco1604";
cisco[117] = "ciscoPro1601";
cisco[118] = "ciscoPro1602";
cisco[119] = "ciscoPro1603";
cisco[120] = "ciscoPro1604";
cisco[122] = "cisco3620";
cisco[123] = "ciscoPro3620";
cisco[124] = "ciscoPro3640";
cisco[125] = "cisco7204";
cisco[126] = "cisco771";
cisco[127] = "cisco772";
cisco[128] = "cisco775";
cisco[129] = "cisco776";
cisco[130] = "ciscoPro2502";
cisco[131] = "ciscoPro2504";
cisco[132] = "ciscoPro2506";
cisco[133] = "ciscoPro2508";
cisco[134] = "ciscoPro2510";
cisco[135] = "ciscoPro2512";
cisco[136] = "ciscoPro2513";
cisco[137] = "ciscoPro2515";
cisco[138] = "ciscoPro2517";
cisco[139] = "ciscoPro2518";
cisco[140] = "ciscoPro2523";
cisco[141] = "ciscoPro2525";
cisco[142] = "ciscoPro4700";
cisco[147] = "ciscoPro316T";
cisco[148] = "ciscoPro316C";
cisco[149] = "ciscoPro3116";
cisco[150] = "catalyst116T";
cisco[151] = "catalyst116C";
cisco[152] = "catalyst1116";
cisco[153] = "ciscoAS2509RJ";
cisco[154] = "ciscoAS2511RJ";
cisco[157] = "ciscoMC3810";
cisco[160] = "cisco1503";
cisco[161] = "cisco1502";
cisco[162] = "ciscoAS5300";
cisco[164] = "ciscoLS1015";
cisco[165] = "cisco2501FRADFX";
cisco[166] = "cisco2501LANFRADFX";
cisco[167] = "cisco2502LANFRADFX";
cisco[168] = "ciscoWSX5302";
cisco[169] = "ciscoFastHub216T";
cisco[170] = "catalyst2908xl";
cisco[171] = "catalyst2916m-xl";
cisco[172] = "cisco1605";
cisco[173] = "cisco12012";
cisco[175] = "catalyst1912C";
cisco[176] = "ciscoMicroWebServer2";
cisco[177] = "ciscoFastHubBMMTX";
cisco[178] = "ciscoFastHubBMMFX";
cisco[179] = "ciscoUBR7246";
cisco[180] = "cisco6400";
cisco[181] = "cisco12004";
cisco[182] = "cisco12008";
cisco[183] = "catalyst2924XL";
cisco[184] = "catalyst2924CXL";
cisco[185] = "cisco2610";
cisco[186] = "cisco2611";
cisco[187] = "cisco2612";
cisco[188] = "ciscoAS5800";
cisco[189] = "ciscoSC3640";
cisco[190] = "cisco8510";
cisco[191] = "ciscoUBR904";
cisco[192] = "cisco6200";
cisco[194] = "cisco7202";
cisco[195] = "cisco2613";
cisco[196] = "cisco8515";
cisco[197] = "catalyst9006";
cisco[198] = "catalyst9009";
cisco[199] = "ciscoRPM";
cisco[200] = "cisco1710";
cisco[201] = "cisco1720";
cisco[202] = "catalyst8540msr";
cisco[203] = "catalyst8540csr";
cisco[204] = "cisco7576";
cisco[205] = "cisco3660";
cisco[206] = "cisco1401";
cisco[208] = "cisco2620";
cisco[209] = "cisco2621";
cisco[210] = "ciscoUBR7223";
cisco[211] = "cisco6400Nrp";
cisco[212] = "cisco801";
cisco[213] = "cisco802";
cisco[214] = "cisco803";
cisco[215] = "cisco804";
cisco[216] = "cisco1750";
cisco[217] = "catalyst2924XLv";
cisco[218] = "catalyst2924CXLv";
cisco[219] = "catalyst2912XL";
cisco[220] = "catalyst2924MXL";
cisco[221] = "catalyst2912MfXL";
cisco[222] = "cisco7206VXR";
cisco[223] = "cisco7204VXR";
cisco[224] = "cisco1538M";
cisco[225] = "cisco1548M";
cisco[226] = "ciscoFasthub100";
cisco[227] = "ciscoPIXFirewall";
cisco[228] = "ciscoMGX8850";
cisco[229] = "ciscoMGX8830";
cisco[230] = "catalyst8510msr";
cisco[231] = "catalyst8515msr";
cisco[232] = "ciscoIGX8410";
cisco[233] = "ciscoIGX8420";
cisco[234] = "ciscoIGX8430";
cisco[235] = "ciscoIGX8450";
cisco[237] = "ciscoBPX8620";
cisco[238] = "ciscoBPX8650";
cisco[239] = "ciscoBPX8680";
cisco[240] = "ciscoCacheEngine";
cisco[241] = "ciscoCat6000";
cisco[242] = "ciscoBPXSes";
cisco[243] = "ciscoIGXSes";
cisco[244] = "ciscoLocalDirector";
cisco[245] = "cisco805";
cisco[246] = "catalyst3508GXL";
cisco[247] = "catalyst3512XL";
cisco[248] = "catalyst3524XL";
cisco[249] = "cisco1407";
cisco[250] = "cisco1417";
cisco[251] = "cisco6100";
cisco[252] = "cisco6130";
cisco[253] = "cisco6260";
cisco[254] = "ciscoOpticalRegenerator";
cisco[255] = "ciscoUBR924";
cisco[256] = "ciscoWSX6302Msm";
cisco[257] = "catalyst5kRsfc";
cisco[258] = "catalyst6kMsfc";
cisco[259] = "cisco7120Quadt1";
cisco[260] = "cisco7120T3";
cisco[261] = "cisco7120E3";
cisco[262] = "cisco7120At3";
cisco[263] = "cisco7120Ae3";
cisco[264] = "cisco7120Smi3";
cisco[265] = "cisco7140Dualt3";
cisco[266] = "cisco7140Duale3";
cisco[267] = "cisco7140Dualat3";
cisco[268] = "cisco7140Dualae3";
cisco[269] = "cisco7140Dualmm3";
cisco[270] = "cisco827QuadV";
cisco[271] = "ciscoUBR7246VXR";
cisco[272] = "cisco10400";
cisco[273] = "cisco12016";
cisco[274] = "ciscoAs5400";
cisco[275] = "cat2948gL3";
cisco[276] = "cisco7140Octt1";
cisco[277] = "cisco7140Dualfe";
cisco[278] = "cat3548XL";
cisco[279] = "ciscoVG200";
cisco[280] = "cat6006";
cisco[281] = "cat6009";
cisco[282] = "cat6506";
cisco[283] = "cat6509";
cisco[284] = "cisco827";
cisco[285] = "ciscoManagementEngine1100";
cisco[286] = "ciscoMc3810V3";
cisco[287] = "cat3524tXLEn";
cisco[288] = "cisco7507z";
cisco[289] = "cisco7513z";
cisco[290] = "cisco7507mx";
cisco[291] = "cisco7513mx";
cisco[292] = "ciscoUBR912C";
cisco[293] = "ciscoUBR912S";
cisco[294] = "ciscoUBR914";
cisco[295] = "cisco802J";
cisco[296] = "cisco804J";
cisco[297] = "cisco6160";
cisco[298] = "cat4908gL3";
cisco[299] = "cisco6015";
cisco[300] = "cat4232L3";
cisco[301] = "catalyst6kMsfc2";
cisco[302] = "cisco7750Mrp200";
cisco[303] = "cisco7750Ssp80";
cisco[304] = "ciscoMGX8230";
cisco[305] = "ciscoMGX8250";
cisco[306] = "ciscoCVA122";
cisco[307] = "ciscoCVA124";
cisco[308] = "ciscoAs5850";
cisco[310] = "cat6509Sp";
cisco[311] = "ciscoMGX8240";
cisco[312] = "cat4840gL3";
cisco[313] = "ciscoAS5350";
cisco[314] = "cisco7750";
cisco[315] = "ciscoMGX8950";
cisco[316] = "ciscoUBR925";
cisco[317] = "ciscoUBR10012";
cisco[318] = "catalyst4kGateway";
cisco[319] = "cisco2650";
cisco[320] = "cisco2651";
cisco[321] = "cisco826QuadV";
cisco[322] = "cisco826";
cisco[323] = "catalyst295012";
cisco[324] = "catalyst295024";
cisco[325] = "catalyst295024C";
cisco[326] = "cisco1751";
cisco[329] = "cisco626";
cisco[330] = "cisco627";
cisco[331] = "cisco633";
cisco[332] = "cisco673";
cisco[333] = "cisco675";
cisco[334] = "cisco675e";
cisco[335] = "cisco676";
cisco[336] = "cisco677";
cisco[337] = "cisco678";
cisco[338] = "cisco3661Ac";
cisco[339] = "cisco3661Dc";
cisco[340] = "cisco3662Ac";
cisco[341] = "cisco3662Dc";
cisco[342] = "cisco3662AcCo";
cisco[343] = "cisco3662DcCo";
cisco[344] = "ciscoUBR7111";
cisco[345] = "ciscoUBR7111E";
cisco[346] = "ciscoUBR7114";
cisco[347] = "ciscoUBR7114E";
cisco[348] = "cisco12010";
cisco[349] = "cisco8110";
cisco[351] = "ciscoUBR905";
cisco[353] = "ciscoSOHO77";
cisco[354] = "ciscoSOHO76";
cisco[355] = "cisco7150Dualfe";
cisco[356] = "cisco7150Octt1";
cisco[357] = "cisco7150Dualt3";
cisco[358] = "ciscoOlympus";
cisco[359] = "catalyst2950t24";
cisco[360] = "ciscoVPS1110";
cisco[361] = "ciscoContentEngine";
cisco[362] = "ciscoIAD2420";
cisco[363] = "cisco677i";
cisco[364] = "cisco674";
cisco[365] = "ciscoDPA7630";
cisco[366] = "catalyst355024";
cisco[367] = "catalyst355048";
cisco[368] = "catalyst355012T";
cisco[369] = "catalyst2924LREXL";
cisco[370] = "catalyst2912LREXL";
cisco[371] = "ciscoCVA122E";
cisco[372] = "ciscoCVA124E";
cisco[373] = "ciscoURM";
cisco[374] = "ciscoURM2FE";
cisco[375] = "ciscoURM2FE2V";
cisco[376] = "cisco7401VXR";
cisco[379] = "ciscoCAP340";
cisco[380] = "ciscoCAP350";
cisco[381] = "ciscoDPA7610";
cisco[382] = "cisco828";
cisco[384] = "cisco806";
cisco[385] = "cisco12416";
cisco[386] = "cat2948gL3Dc";
cisco[387] = "cat4908gL3Dc";
cisco[388] = "cisco12406";
cisco[389] = "ciscoPIXFirewall506";
cisco[390] = "ciscoPIXFirewall515";
cisco[391] = "ciscoPIXFirewall520";
cisco[392] = "ciscoPIXFirewall525";
cisco[393] = "ciscoPIXFirewall535";
cisco[394] = "cisco12410";
cisco[395] = "cisco811";
cisco[396] = "cisco813";
cisco[397] = "cisco10720";
cisco[398] = "ciscoMWR1900";
cisco[399] = "cisco4224";
cisco[400] = "ciscoWSC6513";
cisco[401] = "cisco7603";
cisco[402] = "cisco7606";
cisco[403] = "cisco7401ASR";
cisco[404] = "ciscoVG248";
cisco[405] = "ciscoHSE";
cisco[406] = "ciscoONS15540ESP";
cisco[407] = "ciscoSN5420";
cisco[409] = "ciscoCe507";
cisco[410] = "ciscoCe560";
cisco[411] = "ciscoCe590";
cisco[412] = "ciscoCe7320";
cisco[413] = "cisco2691";
cisco[414] = "cisco3725";
cisco[416] = "cisco1760";
cisco[417] = "ciscoPIXFirewall501";
cisco[418] = "cisco2610M";
cisco[419] = "cisco2611M";
cisco[423] = "cisco12404";
cisco[424] = "cisco9004";
cisco[425] = "cisco3631Co";
cisco[427] = "catalyst295012G";
cisco[428] = "catalyst295024G";
cisco[429] = "catalyst295048G";
cisco[430] = "catalyst295024S";
cisco[431] = "catalyst355012G";
cisco[432] = "ciscoCE507AV";
cisco[433] = "ciscoCE560AV";
cisco[434] = "ciscoIE2105";
cisco[435] = "ciscoMGX8850Pxm1E";
cisco[436] = "cisco3745";
cisco[437] = "cisco10005";
cisco[438] = "cisco10008";
cisco[439] = "cisco7304";
cisco[440] = "ciscoRpmXf";
cisco[444] = "cisco1721";
cisco[446] = "cisco827H";
cisco[448] = "cat4006";
cisco[449] = "ciscoWSC6503";
cisco[450] = "ciscoPIXFirewall506E";
cisco[451] = "ciscoPIXFirewall515E";
cisco[452] = "cat355024Dc";
cisco[453] = "cat355024Mmf";
cisco[454] = "ciscoCE2636";
cisco[455] = "ciscoDwCE";
cisco[456] = "cisco7750Mrp300";
cisco[457] = "ciscoRPMPR";
cisco[458] = "cisco14MGX8830Pxm1E";
cisco[459] = "ciscoWlse";
cisco[464] = "cisco6400UAC";
cisco[474] = "ciscoAIRAP1200";
cisco[475] = "ciscoSN5428";
cisco[466] = "cisco2610XM";
cisco[467] = "cisco2611XM";
cisco[468] = "cisco2620XM";
cisco[469] = "cisco2621XM";
cisco[470] = "cisco2650XM";
cisco[471] = "cisco2651XM";
cisco[472] = "catalyst295024GDC";
cisco[476] = "cisco7301";
cisco[479] = "cisco3250";
cisco[480] = "catalyst295024SX";
cisco[481] = "ciscoONS15540ESPx";
cisco[482] = "catalyst295024LRESt";
cisco[483] = "catalyst29508LRESt";
cisco[484] = "catalyst295024LREG";
cisco[485] = "catalyst355024PWR";
cisco[486] = "ciscoCDM4630";
cisco[487] = "ciscoCDM4650";
cisco[488] = "catalyst2955T12";
cisco[489] = "catalyst2955C12";
cisco[490] = "ciscoCE508";
cisco[491] = "ciscoCE565";
cisco[492] = "ciscoCE7325";
cisco[493] = "ciscoONS15454";
cisco[494] = "ciscoONS15327";
cisco[495] = "cisco837";
cisco[496] = "ciscoSOHO97";
cisco[497] = "cisco831";
cisco[498] = "ciscoSOHO91";
cisco[499] = "cisco836";
cisco[500] = "ciscoSOHO96";
cisco[501] = "cat4507";
cisco[502] = "cat4506";
cisco[503] = "cat4503";
cisco[504] = "ciscoCE7305";
cisco[505] = "ciscoCE510";
cisco[507] = "ciscoAIRAP1100";
cisco[508] = "catalyst2955S12";
cisco[509] = "cisco7609";
cisco[511] = "catalyst375024";
cisco[512] = "catalyst375048";
cisco[513] = "catalyst375024TS";
cisco[514] = "catalyst375024T";
cisco[516] = "catalyst37xxStack";
cisco[517] = "ciscoGSS";
cisco[518] = "ciscoPrimaryGSSM";
cisco[519] = "ciscoStandbyGSSM";
cisco[520] = "ciscoMWR1941DC";
cisco[521] = "ciscoDSC9216K9";
cisco[522] = "cat6500FirewallSm";
cisco[524] = "ciscoCSM";
cisco[525] = "ciscoAIRAP1210";
cisco[527] = "catalyst297024";
cisco[528] = "cisco7613";
cisco[530] = "catalyst3750Ge12Sfp";
cisco[531] = "ciscoCR4430";
cisco[532] = "ciscoCR4450";
cisco[533] = "ciscoAIRBR1410";
cisco[534] = "ciscoWSC6509neba";
cisco[537] = "catalyst4510";
cisco[538] = "cisco1711";
cisco[539] = "cisco1712";
cisco[540] = "catalyst29408TT";
cisco[542] = "catalyst29408TF";
cisco[543] = "cisco3825";
cisco[544] = "cisco3845";
cisco[545] = "cisco2430Iad24Fxs";
cisco[546] = "cisco2431Iad8Fxs";
cisco[547] = "cisco2431Iad16Fxs";
cisco[548] = "cisco2431Iad1T1E1";
cisco[549] = "cisco2432Iad24Fxs";
cisco[550] = "cisco1701ADSLBRI";
cisco[551] = "catalyst2950St24LRE997";
cisco[552] = "ciscoAirAp350IOS";
cisco[553] = "cisco3220";
cisco[554] = "cat6500SslSm";
cisco[555] = "ciscoSIMSE";
cisco[556] = "ciscoESSE";
cisco[557] = "catalyst6kSup720";
cisco[559] = "catalyst295048T";
cisco[560] = "catalyst295048SX";
cisco[561] = "catalyst297024TS";
cisco[562] = "ciscoNmNam";
cisco[563] = "catalyst356024PS";
cisco[564] = "catalyst356048PS";
cisco[565] = "ciscoAIRBR1300";
cisco[573] = "catalyst6kGateway";
cisco[574] = "catalyst375024ME";
cisco[575] = "catalyst4000NAM";
cisco[576] = "cisco2811";
cisco[577] = "cisco2821";
cisco[578] = "cisco2851";
cisco[590] = "cisco12006";
cisco[591] = "catalyst3750G16TD";
cisco[592] = "ciscoIGESM";
cisco[593] = "ciscoCCM";
cisco[595] = "ciscoCe511K9";
cisco[596] = "ciscoCe566K9";
cisco[598] = "ciscoMGX8880";
cisco[599] = "ciscoWsSvcWLAN1K9";
cisco[600] = "ciscoCe7306K9";
cisco[601] = "ciscoCe7326K9";
cisco[606] = "ciscoBMGX8830Pxm45";
cisco[607] = "ciscoBMGX8830Pxm1E";
cisco[608] = "ciscoBMGX8850Pxm45";
cisco[609] = "ciscoBMGX8850Pxm1E";
cisco[611] = "ciscoNetworkRegistrar";
cisco[612] = "ciscoCe501K9";
cisco[618] = "ciscoAIRAP1130";
cisco[619] = "cisco2801";
cisco[620] = "cisco1841";
cisco[621] = "ciscoWsSvcMWAM1";
cisco[622] = "ciscoNMCUE";
cisco[623] = "ciscoAIMCUE";
cisco[625] = "cisco371098HP001";
cisco[626] = "catalyst4948";
cisco[630] = "ciscoWLSE1130";
cisco[631] = "ciscoWLSE1030";
cisco[632] = "ciscoHSE1140";
cisco[645] = "ciscoIDS4210";
cisco[646] = "ciscoIDS4215";
cisco[647] = "ciscoIDS4235";
cisco[648] = "ciscoIPS4240";
cisco[649] = "ciscoIDS4250";
cisco[650] = "ciscoIDS4250SX";
cisco[651] = "ciscoIDS4250XL";
cisco[652] = "ciscoIPS4255";
cisco[653] = "ciscoIDSIDSM2";
cisco[654] = "ciscoIDSNMCIDS";
cisco[655] = "ciscoIPSSSM20";
cisco[661] = "ciscoFE6326K9";
cisco[662] = "ciscoIPSSSM10";
cisco[663] = "ciscoNme16Es1Ge";
cisco[664] = "ciscoNmeX24Es1Ge";
cisco[665] = "ciscoNmeXd24Es2St";
cisco[666] = "ciscoNmeXd48Es2Ge";
cisco[668] = "ciscoAs5400XM";
cisco[679] = "ciscoAs5350XM";
cisco[680] = "ciscoFe7326K9";
cisco[681] = "ciscoFe511K9";
cisco[682] = "ciscoSCEDispatcher";
cisco[683] = "ciscoSCE1000";
cisco[684] = "ciscoSCE2000";
cisco[686] = "ciscoDSC9120CLK9";
cisco[687] = "ciscoFe611K9";
cisco[693] = "ciscoICM";
cisco[706] = "catalyst6kMsfc2a";
cisco[708] = "ciscoCe611K9";
cisco[709] = "ciscoWLSEs20";
cisco[710] = "ciscoMPX";
cisco[711] = "ciscoNMCUEEC";
cisco[712] = "ciscoWLSE1132";
cisco[713] = "ciscoME6340ACA";
cisco[714] = "ciscoME6340DCA";
cisco[715] = "ciscoME6340DCB";


if(!cisco[type])
{
 item = "unknown";
}
else
{ 
 item = cisco[type];
}

set_kb_item(name:"CISCO/model", value:item);

if(!(item == "unknown"))
{
 report = string (desc["english"],
		"\n\nPlugin output :\n\n",
		item);

 security_note(port:port, data:report, protocol:"udp");
}
