{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 34.0, 79.0, 504.0, 714.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 71.0, 684.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 307.0, 679.0, 51.0, 22.0 ],
					"style" : "",
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 274.0, 626.0, 127.0, 22.0 ],
					"style" : "",
					"text" : "makenote 100 250 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 196.0, 651.0, 29.5, 22.0 ],
					"presentation_rect" : [ 199.0, 652.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "44"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 196.0, 612.0, 52.0, 22.0 ],
					"presentation_rect" : [ 199.0, 613.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 651.0, 29.5, 22.0 ],
					"presentation_rect" : [ 132.5, 652.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "49"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 135.0, 612.0, 52.0, 22.0 ],
					"presentation_rect" : [ 132.5, 613.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 76.5, 651.0, 29.5, 22.0 ],
					"presentation_rect" : [ 79.0, 651.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "40"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 76.5, 612.0, 52.0, 22.0 ],
					"presentation_rect" : [ 79.0, 612.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 651.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "48"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 18.0, 612.0, 52.0, 22.0 ],
					"style" : "",
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
					"id" : "obj-51",
					"ignoreclick" : 1,
					"knobcolor" : [ 0.92549, 0.364706, 0.341176, 1.0 ],
					"knobshape" : 5,
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 122.0, 288.0, 126.0 ],
					"size" : 18.0,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 314.0, 266.0, 100.0, 40.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 196, "obj-50", "matrixctrl", "list", 0, 0, 1, 0, 1, 0, 0, 2, 0, 0, 3, 1, 1, 0, 0, 1, 1, 0, 1, 2, 0, 1, 3, 1, 2, 0, 0, 2, 1, 0, 2, 2, 0, 2, 3, 1, 3, 0, 1, 3, 1, 0, 3, 2, 0, 3, 3, 1, 4, 0, 1, 4, 1, 0, 4, 2, 0, 4, 3, 1, 5, 0, 0, 5, 1, 0, 5, 2, 0, 5, 3, 1, 6, 0, 0, 6, 1, 0, 6, 2, 1, 6, 3, 1, 7, 0, 0, 7, 1, 1, 7, 2, 0, 7, 3, 1, 8, 0, 0, 8, 1, 0, 8, 2, 1, 8, 3, 1, 9, 0, 0, 9, 1, 0, 9, 2, 0, 9, 3, 1, 10, 0, 0, 10, 1, 0, 10, 2, 0, 10, 3, 1, 11, 0, 0, 11, 1, 0, 11, 2, 1, 11, 3, 1, 12, 0, 0, 12, 1, 0, 12, 2, 0, 12, 3, 1, 13, 0, 0, 13, 1, 0, 13, 2, 0, 13, 3, 1, 14, 0, 0, 14, 1, 0, 14, 2, 1, 14, 3, 1, 15, 0, 0, 15, 1, 0, 15, 2, 0, 15, 3, 1 ]
						}
, 						{
							"number" : 2,
							"data" : [ 196, "obj-50", "matrixctrl", "list", 0, 0, 1, 0, 1, 0, 0, 2, 0, 0, 3, 1, 1, 0, 0, 1, 1, 0, 1, 2, 0, 1, 3, 1, 2, 0, 0, 2, 1, 1, 2, 2, 0, 2, 3, 1, 3, 0, 0, 3, 1, 0, 3, 2, 0, 3, 3, 1, 4, 0, 0, 4, 1, 0, 4, 2, 0, 4, 3, 1, 5, 0, 1, 5, 1, 0, 5, 2, 0, 5, 3, 1, 6, 0, 0, 6, 1, 1, 6, 2, 0, 6, 3, 1, 7, 0, 0, 7, 1, 0, 7, 2, 0, 7, 3, 1, 8, 0, 1, 8, 1, 0, 8, 2, 0, 8, 3, 1, 9, 0, 0, 9, 1, 0, 9, 2, 0, 9, 3, 1, 10, 0, 0, 10, 1, 1, 10, 2, 0, 10, 3, 1, 11, 0, 0, 11, 1, 0, 11, 2, 0, 11, 3, 1, 12, 0, 0, 12, 1, 0, 12, 2, 0, 12, 3, 1, 13, 0, 1, 13, 1, 0, 13, 2, 0, 13, 3, 1, 14, 0, 0, 14, 1, 1, 14, 2, 0, 14, 3, 1, 15, 0, 0, 15, 1, 0, 15, 2, 0, 15, 3, 1 ]
						}
, 						{
							"number" : 3,
							"data" : [ 196, "obj-50", "matrixctrl", "list", 0, 0, 1, 0, 1, 0, 0, 2, 0, 0, 3, 1, 1, 0, 0, 1, 1, 0, 1, 2, 0, 1, 3, 1, 2, 0, 0, 2, 1, 1, 2, 2, 0, 2, 3, 1, 3, 0, 0, 3, 1, 0, 3, 2, 0, 3, 3, 1, 4, 0, 0, 4, 1, 0, 4, 2, 0, 4, 3, 1, 5, 0, 1, 5, 1, 0, 5, 2, 0, 5, 3, 1, 6, 0, 0, 6, 1, 1, 6, 2, 0, 6, 3, 1, 7, 0, 0, 7, 1, 0, 7, 2, 0, 7, 3, 1, 8, 0, 1, 8, 1, 0, 8, 2, 0, 8, 3, 1, 9, 0, 0, 9, 1, 0, 9, 2, 0, 9, 3, 1, 10, 0, 0, 10, 1, 1, 10, 2, 0, 10, 3, 1, 11, 0, 0, 11, 1, 0, 11, 2, 0, 11, 3, 1, 12, 0, 0, 12, 1, 0, 12, 2, 0, 12, 3, 1, 13, 0, 1, 13, 1, 0, 13, 2, 0, 13, 3, 1, 14, 0, 0, 14, 1, 1, 14, 2, 0, 14, 3, 1, 15, 0, 0, 15, 1, 0, 15, 2, 0, 15, 3, 1 ]
						}
, 						{
							"number" : 4,
							"data" : [ 196, "obj-50", "matrixctrl", "list", 0, 0, 1, 0, 1, 0, 0, 2, 0, 0, 3, 0, 1, 0, 1, 1, 1, 0, 1, 2, 0, 1, 3, 0, 2, 0, 1, 2, 1, 0, 2, 2, 1, 2, 3, 0, 3, 0, 1, 3, 1, 0, 3, 2, 0, 3, 3, 0, 4, 0, 1, 4, 1, 0, 4, 2, 0, 4, 3, 0, 5, 0, 1, 5, 1, 0, 5, 2, 0, 5, 3, 0, 6, 0, 1, 6, 1, 0, 6, 2, 1, 6, 3, 0, 7, 0, 1, 7, 1, 0, 7, 2, 0, 7, 3, 0, 8, 0, 1, 8, 1, 0, 8, 2, 0, 8, 3, 0, 9, 0, 1, 9, 1, 0, 9, 2, 0, 9, 3, 0, 10, 0, 1, 10, 1, 0, 10, 2, 1, 10, 3, 0, 11, 0, 1, 11, 1, 0, 11, 2, 0, 11, 3, 0, 12, 0, 1, 12, 1, 0, 12, 2, 0, 12, 3, 0, 13, 0, 1, 13, 1, 0, 13, 2, 0, 13, 3, 0, 14, 0, 1, 14, 1, 0, 14, 2, 1, 14, 3, 0, 15, 0, 1, 15, 1, 0, 15, 2, 0, 15, 3, 0 ]
						}
 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 330.0, 90.0, 50.5, 22.0 ],
					"style" : "",
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 314.0, 145.0, 59.0, 22.0 ],
					"style" : "",
					"text" : "select 32"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-46",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 196.0, 569.0, 53.0, 23.0 ],
					"presentation_rect" : [ 196.0, 570.0, 0.0, 0.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 23.0, 380.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 408.0, 89.0, 23.0 ],
					"style" : "",
					"text" : "getcolumn $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 269.0, 569.0, 94.0, 23.0 ],
					"style" : "",
					"text" : "0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 127.0, 380.0, 38.0, 23.0 ],
					"style" : "",
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-41",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 135.0, 569.0, 53.0, 23.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-42",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 76.5, 569.0, 53.0, 23.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-43",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.0, 569.0, 53.0, 23.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 18.0, 536.0, 96.0, 23.0 ],
					"style" : "",
					"text" : "unpack 0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"columns" : 16,
					"id" : "obj-50",
					"maxclass" : "matrixctrl",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "list", "list" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 167.0, 412.0, 263.0, 66.0 ],
					"presentation_rect" : [ 30.0, 30.0, 130.0, 66.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 269.0, 23.0, 31.0, 22.0 ],
					"style" : "",
					"text" : "500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 230.0, 23.0, 31.0, 22.0 ],
					"style" : "",
					"text" : "333"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 189.5, 23.0, 31.0, 22.0 ],
					"style" : "",
					"text" : "250"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 145.0, 23.0, 31.0, 22.0 ],
					"style" : "",
					"text" : "175"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 23.0, 22.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 69.0, 22.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 23.0, 61.0, 65.0, 22.0 ],
					"style" : "",
					"text" : "metro 125"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 23.0, 104.5, 24.0, 24.0 ],
					"presentation_rect" : [ 479.0, 143.5, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 145.0, 209.0, 77.0, 20.0 ],
					"style" : "helpfile_label",
					"text" : "carry count"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 95.0, 248.0, 88.0, 20.0 ],
					"style" : "helpfile_label",
					"text" : "max reached"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 71.0, 282.0, 84.0, 20.0 ],
					"style" : "helpfile_label",
					"text" : "min reached"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-20",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 95.0, 209.0, 50.0, 23.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 71.0, 248.0, 24.0, 24.0 ],
					"presentation_rect" : [ 527.0, 287.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 47.0, 282.0, 24.0, 24.0 ],
					"presentation_rect" : [ 503.0, 321.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-9",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 23.0, 316.0, 50.0, 23.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 79.0, 135.0, 35.0, 23.0 ],
					"style" : "",
					"text" : "dec"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 61.0, 110.0, 36.0, 23.0 ],
					"style" : "",
					"text" : "inc"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 23.0, 179.0, 94.0, 23.0 ],
					"style" : "",
					"text" : "counter 0 1 16"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 136.5, 415.0, 176.5, 415.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-3", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 32.5, 517.0, 159.0, 517.0, 159.0, 427.0, 176.5, 427.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 78.833336, 568.0, 144.5, 568.0 ],
					"source" : [ "obj-44", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"midpoints" : [ 53.166668, 568.0, 86.0, 568.0 ],
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 27.5, 568.0, 27.5, 568.0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-44", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"midpoints" : [ 420.5, 520.0, 27.5, 520.0 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 2 ],
					"source" : [ "obj-61", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 1 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 1 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
