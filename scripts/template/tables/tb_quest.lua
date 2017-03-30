---------------------------------------------------------------------------------
--------------------------以下代码为自动生成，请勿手工改动-----------------------
---------------------------------------------------------------------------------


tb_quest = {
	--  id:int	任务id
	--  type:int	任务类型
	--  belongSet:int	所属日常任务集合
	--  belongLvRangeId:int	所属日常任务等级段ID
	--  chapterName:string	章节名
	--  chapter:int	章节
	--  questName:string	任务名
	--  level:int	需要等级
	--  start:int	是否是初始任务
	--  chapterLast:int	章节最后一个任务
	--  moduleId:int	需要模块id
	--  targetsPosition:array	任务目标位置
	--  targets:array	任务目标
	--  popup:int	奖励弹出方式
	--  rewards:array	任务奖励
	--  nextid:int	下一个主线任务id
	--  acitveIds:array	额外激活的任务id
	--  guide_id:int	开启引导
	[10101] = {id = 10101,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务1",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,133,148,6005}},targets = {{19,6005}},popup = 0,rewards = {},nextid = 10102,acitveIds = {20104,20105,20106,20107,20108,20109,20110,20111},guide_id = 1,},
	[10102] = {id = 10102,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务1",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,133,148,6005}},targets = {{19,6005}},popup = 0,rewards = {{{3,500},{104,500},{2001,1}},{{3,500},{104,500},{2011,1}}},nextid = 10103,acitveIds = {},guide_id = 0,},
	[10103] = {id = 10103,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务2",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{2,102,0}},targets = {{24,1,0}},popup = 2,rewards = {},nextid = 10104,acitveIds = {},guide_id = 0,},
	[10104] = {id = 10104,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务2",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,133,148,6005}},targets = {{19,6005}},popup = 0,rewards = {},nextid = 10105,acitveIds = {},guide_id = 0,},
	[10105] = {id = 10105,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务2",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,182,89,6001}},targets = {{19,6001}},popup = 0,rewards = {{{3,1000},{104,500}}},nextid = 10106,acitveIds = {},guide_id = 0,},
	[10106] = {id = 10106,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务3",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,182,89,6001}},targets = {{19,6001}},popup = 0,rewards = {},nextid = 10107,acitveIds = {},guide_id = 0,},
	[10107] = {id = 10107,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务3",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{1,1001,185,98}},targets = {{22,7001,4}},popup = 0,rewards = {},nextid = 10108,acitveIds = {},guide_id = 0,},
	[10108] = {id = 10108,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务3",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,182,89,6001}},targets = {{19,6001}},popup = 2,rewards = {{{3,1000},{104,1000},{2002,1}},{{3,1000},{104,1000},{2012,1}}},nextid = 10109,acitveIds = {},guide_id = 0,},
	[10109] = {id = 10109,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务4",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,182,89,6001}},targets = {{19,6001}},popup = 0,rewards = {},nextid = 10110,acitveIds = {},guide_id = 0,},
	[10110] = {id = 10110,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务4",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{4,1001,134,109,20}},targets = {{20,20,3}},popup = 0,rewards = {},nextid = 10111,acitveIds = {},guide_id = 0,},
	[10111] = {id = 10111,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务4",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,182,89,6001}},targets = {{19,6001}},popup = 2,rewards = {{{3,1000},{104,1200},{1201,10}}},nextid = 10112,acitveIds = {},guide_id = 0,},
	[10112] = {id = 10112,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务5",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,182,89,6001}},targets = {{19,6001}},popup = 0,rewards = {},nextid = 10113,acitveIds = {},guide_id = 0,},
	[10113] = {id = 10113,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务5",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,135,23,6003}},targets = {{19,6003}},popup = 0,rewards = {{{3,1000},{104,1400}}},nextid = 10114,acitveIds = {},guide_id = 0,},
	[10114] = {id = 10114,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务6",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,135,23,6003}},targets = {{19,6003}},popup = 0,rewards = {},nextid = 10115,acitveIds = {},guide_id = 0,},
	[10115] = {id = 10115,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务6",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{1,1001,155,30}},targets = {{22,7010,5}},popup = 0,rewards = {},nextid = 10116,acitveIds = {},guide_id = 0,},
	[10116] = {id = 10116,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务6",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,135,23,6003}},targets = {{19,6003}},popup = 2,rewards = {{{3,1000},{104,1800},{2003,1}},{{3,1000},{104,1800},{2013,1}}},nextid = 10117,acitveIds = {},guide_id = 0,},
	[10117] = {id = 10117,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务7",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,135,23,6003}},targets = {{19,6003}},popup = 0,rewards = {},nextid = 10118,acitveIds = {},guide_id = 0,},
	[10118] = {id = 10118,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务7",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{4,1001,155,18,21},{4,1001,120,11,22}},targets = {{20,21,1},{20,22,1}},popup = 0,rewards = {},nextid = 10119,acitveIds = {},guide_id = 0,},
	[10119] = {id = 10119,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务7",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,135,23,6003}},targets = {{19,6003}},popup = 2,rewards = {{{3,1000},{104,2000}}},nextid = 10120,acitveIds = {},guide_id = 0,},
	[10120] = {id = 10120,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务8",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,52,83,6002}},targets = {{19,6002}},popup = 0,rewards = {},nextid = 10121,acitveIds = {},guide_id = 0,},
	[10121] = {id = 10121,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务8",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{4,1001,54,104,23},{4,1001,54,55,24}},targets = {{20,23,1},{20,24,1}},popup = 0,rewards = {},nextid = 10122,acitveIds = {},guide_id = 0,},
	[10122] = {id = 10122,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务8",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,48,79,6002}},targets = {{19,6002}},popup = 2,rewards = {{{3,1000},{104,2200},{2004,1},{201,10}},{{3,1000},{104,2200},{2014,1},{201,10}}},nextid = 10123,acitveIds = {},guide_id = 0,},
	[10123] = {id = 10123,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务9",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,48,79,6002}},targets = {{19,6002}},popup = 0,rewards = {},nextid = 10124,acitveIds = {},guide_id = 0,},
	[10124] = {id = 10124,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务9",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{2,202,0}},targets = {{11,1}},popup = 2,rewards = {{{3,1000},{104,5000}}},nextid = 10125,acitveIds = {},guide_id = 0,},
	[10125] = {id = 10125,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务10",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,52,83,6002}},targets = {{19,6002}},popup = 0,rewards = {},nextid = 10126,acitveIds = {},guide_id = 0,},
	[10126] = {id = 10126,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务10",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,52,83,6002}},targets = {{19,6002}},popup = 0,rewards = {},nextid = 10127,acitveIds = {},guide_id = 0,},
	[10127] = {id = 10127,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务10",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{1,1001,28,78}},targets = {{22,7403,1}},popup = 0,rewards = {},nextid = 10128,acitveIds = {},guide_id = 0,},
	[10128] = {id = 10128,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务10",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,52,83,6002}},targets = {{19,6002}},popup = 0,rewards = {{{3,1000},{104,10000},{2005,1}},{{3,1000},{104,10000},{2015,1}}},nextid = 10129,acitveIds = {},guide_id = 0,},
	[10129] = {id = 10129,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务11",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,52,83,6002}},targets = {{19,6002}},popup = 0,rewards = {},nextid = 10130,acitveIds = {},guide_id = 0,},
	[10130] = {id = 10130,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第一章",chapter = 1,questName = "任务11",level = 1,start = 0,chapterLast = 1,moduleId = 0,targetsPosition = {{3,1,118,146,6008}},targets = {{19,6008}},popup = 0,rewards = {{{3,1000},{104,16000}}},nextid = 10201,acitveIds = {},guide_id = 0,},
	[10201] = {id = 10201,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务12",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,118,146,6008}},targets = {{19,6008}},popup = 0,rewards = {},nextid = 10202,acitveIds = {},guide_id = 0,},
	[10202] = {id = 10202,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务12",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,157,180,6013}},targets = {{19,6013}},popup = 2,rewards = {{{3,1000},{104,20000},{2126,1}},{{3,1000},{104,20000},{2136,1}}},nextid = 10203,acitveIds = {},guide_id = 0,},
	[10203] = {id = 10203,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务13",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,157,180,6013}},targets = {{19,6013}},popup = 0,rewards = {},nextid = 10204,acitveIds = {},guide_id = 0,},
	[10204] = {id = 10204,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务13",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,157,180,6013}},targets = {{19,6013}},popup = 2,rewards = {{{3,1000},{104,24000},{2127,1}},{{3,1000},{104,24000},{2137,1}}},nextid = 10205,acitveIds = {},guide_id = 0,},
	[10205] = {id = 10205,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务14",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,157,180,6013}},targets = {{19,6013}},popup = 0,rewards = {},nextid = 10206,acitveIds = {},guide_id = 0,},
	[10206] = {id = 10206,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务14",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,119,11,6016}},targets = {{19,6016}},popup = 2,rewards = {{{3,1000},{104,28000},{2128,1}},{{3,1000},{104,28000},{2138,1}}},nextid = 10207,acitveIds = {},guide_id = 0,},
	[10207] = {id = 10207,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务15",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,119,11,6016}},targets = {{19,6016}},popup = 0,rewards = {},nextid = 10208,acitveIds = {},guide_id = 0,},
	[10208] = {id = 10208,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务15",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,77,46,6010}},targets = {{19,6010}},popup = 2,rewards = {{{3,1000},{104,30000}}},nextid = 10209,acitveIds = {},guide_id = 0,},
	[10209] = {id = 10209,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务16",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,77,46,6010}},targets = {{19,6010}},popup = 0,rewards = {},nextid = 10210,acitveIds = {},guide_id = 0,},
	[10210] = {id = 10210,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务16",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{2,501,2}},targets = {{8,2014,1}},popup = 0,rewards = {},nextid = 10211,acitveIds = {},guide_id = 0,},
	[10211] = {id = 10211,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务16",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,77,46,6010}},targets = {{19,6010}},popup = 2,rewards = {{{3,1000},{104,60000},{2129,1}},{{3,1000},{104,70000},{2139,1}}},nextid = 10212,acitveIds = {},guide_id = 0,},
	[10212] = {id = 10212,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务17",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,77,46,6010}},targets = {{19,6010}},popup = 0,rewards = {},nextid = 10213,acitveIds = {},guide_id = 0,},
	[10213] = {id = 10213,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务17",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,158,47,6011}},targets = {{19,6011}},popup = 2,rewards = {{{3,1000},{104,70000},{2130,1}},{{3,1000},{104,70000},{2140,1}}},nextid = 10214,acitveIds = {},guide_id = 0,},
	[10214] = {id = 10214,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务18",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,158,47,6011}},targets = {{19,6011}},popup = 0,rewards = {},nextid = 10215,acitveIds = {},guide_id = 0,},
	[10215] = {id = 10215,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务18",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{2,503,2}},targets = {{43,1}},popup = 0,rewards = {},nextid = 10216,acitveIds = {},guide_id = 0,},
	[10216] = {id = 10216,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务18",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,158,47,6011}},targets = {{19,6011}},popup = 2,rewards = {{{3,1000},{104,90000},{2241,1}},{{3,1000},{104,90000},{2251,1}}},nextid = 10217,acitveIds = {},guide_id = 0,},
	[10217] = {id = 10217,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务19",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,77,107,6012}},targets = {{19,6012}},popup = 0,rewards = {},nextid = 10218,acitveIds = {},guide_id = 0,},
	[10218] = {id = 10218,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务19",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{2,206,1}},targets = {{17,0,1}},popup = 0,rewards = {},nextid = 10219,acitveIds = {},guide_id = 0,},
	[10219] = {id = 10219,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务19",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,77,107,6012}},targets = {{19,6012}},popup = 2,rewards = {{{3,1000},{104,110000},{2242,1}},{{3,1000},{104,110000},{2252,1}}},nextid = 10220,acitveIds = {},guide_id = 0,},
	[10220] = {id = 10220,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务20",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,119,11,6016}},targets = {{19,6016}},popup = 0,rewards = {},nextid = 10221,acitveIds = {},guide_id = 3,},
	[10221] = {id = 10221,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务20",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{2,201,1}},targets = {{13,0,1}},popup = 0,rewards = {},nextid = 10222,acitveIds = {},guide_id = 0,},
	[10222] = {id = 10222,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务20",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,119,11,6016}},targets = {{19,6016}},popup = 2,rewards = {{{3,1000},{104,170000},{2243,1}},{{3,1000},{104,170000},{2253,1}}},nextid = 10223,acitveIds = {},guide_id = 0,},
	[10223] = {id = 10223,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务21",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,119,11,6016}},targets = {{19,6016}},popup = 0,rewards = {},nextid = 10224,acitveIds = {},guide_id = 0,},
	[10224] = {id = 10224,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务21",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,157,180,6013}},targets = {{19,6013}},popup = 2,rewards = {{{3,1000},{104,180000},{1202,100}}},nextid = 10225,acitveIds = {},guide_id = 0,},
	[10225] = {id = 10225,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务22",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,118,146,6008}},targets = {{19,6008}},popup = 0,rewards = {},nextid = 10226,acitveIds = {},guide_id = 0,},
	[10226] = {id = 10226,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务22",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {},targets = {{1,32}},popup = 0,rewards = {},nextid = 10227,acitveIds = {},guide_id = 0,},
	[10227] = {id = 10227,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务22",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,118,146,6008}},targets = {{19,6008}},popup = 2,rewards = {{{3,1000},{104,200000}}},nextid = 10228,acitveIds = {},guide_id = 0,},
	[10228] = {id = 10228,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务23",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,77,107,6012}},targets = {{19,6012}},popup = 0,rewards = {},nextid = 10229,acitveIds = {},guide_id = 0,},
	[10229] = {id = 10229,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务23",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,77,107,6012}},targets = {{19,6012}},popup = 0,rewards = {},nextid = 10230,acitveIds = {},guide_id = 0,},
	[10230] = {id = 10230,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务23",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{2,205,1}},targets = {{14,1}},popup = 0,rewards = {},nextid = 10231,acitveIds = {},guide_id = 0,},
	[10231] = {id = 10231,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务23",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,77,107,6012}},targets = {{19,6012}},popup = 2,rewards = {{{3,1000},{104,300000}}},nextid = 10232,acitveIds = {},guide_id = 0,},
	[10232] = {id = 10232,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务24",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,77,107,6012}},targets = {{19,6012}},popup = 0,rewards = {},nextid = 10233,acitveIds = {},guide_id = 0,},
	[10233] = {id = 10233,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务24",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {},targets = {{1,36}},popup = 0,rewards = {},nextid = 10234,acitveIds = {},guide_id = 0,},
	[10234] = {id = 10234,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第二章",chapter = 2,questName = "任务24",level = 1,start = 0,chapterLast = 1,moduleId = 0,targetsPosition = {{3,1002,108,164,6027}},targets = {{19,6027}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 10301,acitveIds = {},guide_id = 0,},
	[10301] = {id = 10301,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "妙一夫人",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1002,108,164,6027}},targets = {{19,6027}},popup = 2,rewards = {},nextid = 10302,acitveIds = {},guide_id = 0,},
	[10302] = {id = 10302,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "妙一夫人",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{1,1002,110,174}},targets = {{22,7221,5}},popup = 0,rewards = {},nextid = 10303,acitveIds = {},guide_id = 0,},
	[10303] = {id = 10303,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "妙一夫人",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1002,108,164,6027}},targets = {{19,6027}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 10304,acitveIds = {},guide_id = 0,},
	[10304] = {id = 10304,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "蝴蝶捣乱",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1002,108,164,6027}},targets = {{19,6027}},popup = 2,rewards = {},nextid = 10305,acitveIds = {},guide_id = 0,},
	[10305] = {id = 10305,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "蝴蝶捣乱",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{1,1002,62,148}},targets = {{22,7222,5}},popup = 0,rewards = {},nextid = 10306,acitveIds = {},guide_id = 0,},
	[10306] = {id = 10306,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "蝴蝶捣乱",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1002,108,164,6027}},targets = {{19,6027}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 10307,acitveIds = {},guide_id = 0,},
	[10307] = {id = 10307,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "奇怪生物",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1002,111,89,6028}},targets = {{19,6028}},popup = 2,rewards = {},nextid = 10308,acitveIds = {},guide_id = 0,},
	[10308] = {id = 10308,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "奇怪生物",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{1,1002,113,98},{1,1002,30,73}},targets = {{22,7223,5},{22,7224,5}},popup = 0,rewards = {},nextid = 10309,acitveIds = {},guide_id = 0,},
	[10309] = {id = 10309,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "奇怪生物",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1002,111,89,6028}},targets = {{19,6028}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 10310,acitveIds = {},guide_id = 0,},
	[10310] = {id = 10310,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "神兵来源",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1002,111,89,6028}},targets = {{19,6028}},popup = 2,rewards = {},nextid = 10311,acitveIds = {},guide_id = 0,},
	[10311] = {id = 10311,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "神兵来源",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{4,1002,20,42,26},{4,1002,37,42,25}},targets = {{20,26,1},{20,25,1}},popup = 0,rewards = {},nextid = 10312,acitveIds = {},guide_id = 0,},
	[10312] = {id = 10312,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "神兵来源",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1002,115,18,6029}},targets = {{19,6029}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 10313,acitveIds = {},guide_id = 0,},
	[10313] = {id = 10313,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "山魈作祟",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1002,115,18,6029}},targets = {{19,6029}},popup = 2,rewards = {},nextid = 10314,acitveIds = {},guide_id = 0,},
	[10314] = {id = 10314,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "山魈作祟",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{1,1002,143,15}},targets = {{22,7225,5}},popup = 0,rewards = {},nextid = 10315,acitveIds = {},guide_id = 0,},
	[10315] = {id = 10315,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "山魈作祟",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1002,115,18,6029}},targets = {{19,6029}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 10316,acitveIds = {},guide_id = 0,},
	[10316] = {id = 10316,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "击杀山魈王",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1002,115,18,6029}},targets = {{19,6029}},popup = 2,rewards = {},nextid = 10317,acitveIds = {},guide_id = 0,},
	[10317] = {id = 10317,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "击杀山魈王",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{1,1002,130,35}},targets = {{22,7514,1}},popup = 0,rewards = {},nextid = 10318,acitveIds = {},guide_id = 0,},
	[10318] = {id = 10318,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "击杀山魈王",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1002,115,18,6029}},targets = {{19,6029}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 10319,acitveIds = {},guide_id = 0,},
	[10319] = {id = 10319,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "卡死你",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {},targets = {{1,101}},popup = 2,rewards = {},nextid = 10320,acitveIds = {},guide_id = 0,},
	[10320] = {id = 10320,type = 0,belongSet = 0,belongLvRangeId = 0,chapterName = "第三章",chapter = 3,questName = "卡死你",level = 1,start = 0,chapterLast = 1,moduleId = 0,targetsPosition = {{3,1002,108,164,6027}},targets = {{19,6027}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[20101] = {id = 20101,type = 1,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "挑战资源副本",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{2,501,2}},targets = {{8,0,1}},popup = 1,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[20102] = {id = 20102,type = 1,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "挑战试炼塔",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{2,501,3}},targets = {{9,1}},popup = 1,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[20103] = {id = 20103,type = 1,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "升级狂魔",level = 5,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {},targets = {{1,10}},popup = 1,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[20104] = {id = 20104,type = 1,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "小有所成",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {},targets = {{40,1}},popup = 1,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[20105] = {id = 20105,type = 1,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "称号加身",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {},targets = {{41,0}},popup = 1,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[20106] = {id = 20106,type = 1,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "新时装",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {},targets = {{42,0}},popup = 1,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[20107] = {id = 20107,type = 1,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "初试斗剑",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {},targets = {{43,1}},popup = 1,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[20108] = {id = 20108,type = 1,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "斗剑初胜",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {},targets = {{30,1}},popup = 1,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[20109] = {id = 20109,type = 1,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "初试33",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {},targets = {{44,1}},popup = 1,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[20110] = {id = 20110,type = 1,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "33初胜",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {},targets = {{45,1}},popup = 1,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[20111] = {id = 20111,type = 1,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "初试夺宝",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {},targets = {{46,1}},popup = 1,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[30001] = {id = 30001,type = 4,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "环任务",level = 1,start = 1,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,118,146,6008}},targets = {{19,6008}},popup = 0,rewards = {},nextid = 0,acitveIds = {},guide_id = 0,},
	[30002] = {id = 30002,type = 4,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "环任务",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,133,148,6005}},targets = {{19,6005}},popup = 0,rewards = {},nextid = 0,acitveIds = {},guide_id = 0,},
	[30003] = {id = 30003,type = 4,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "环任务",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{1,1001,185,98}},targets = {{22,7001,4}},popup = 0,rewards = {},nextid = 0,acitveIds = {},guide_id = 0,},
	[30004] = {id = 30004,type = 4,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "环任务",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{4,1001,134,109,20}},targets = {{20,20,3}},popup = 0,rewards = {},nextid = 0,acitveIds = {},guide_id = 0,},
	[30005] = {id = 30005,type = 4,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "环任务",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{1,1001,155,30}},targets = {{22,7010,5}},popup = 0,rewards = {},nextid = 0,acitveIds = {},guide_id = 0,},
	[30006] = {id = 30006,type = 4,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "环任务",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,135,23,6003}},targets = {{19,6003}},popup = 0,rewards = {},nextid = 0,acitveIds = {},guide_id = 0,},
	[50001] = {id = 50001,type = 5,belongSet = 0,belongLvRangeId = 0,chapterName = "",chapter = 0,questName = "日常任务",level = 1,start = 1,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1,118,146,6008}},targets = {{19,6008}},popup = 0,rewards = {},nextid = 0,acitveIds = {},guide_id = 0,},
	[50002] = {id = 50002,type = 5,belongSet = 1,belongLvRangeId = 1,chapterName = "",chapter = 0,questName = "日常任务",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{3,1001,133,148,6005}},targets = {{19,6005}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[50003] = {id = 50003,type = 5,belongSet = 2,belongLvRangeId = 1,chapterName = "",chapter = 0,questName = "日常任务",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{1,1001,185,98}},targets = {{22,7001,4}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[50004] = {id = 50004,type = 5,belongSet = 2,belongLvRangeId = 1,chapterName = "",chapter = 0,questName = "日常任务",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{4,1001,134,109,20}},targets = {{20,20,3}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[50005] = {id = 50005,type = 5,belongSet = 3,belongLvRangeId = 1,chapterName = "",chapter = 0,questName = "日常任务",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{1,1001,155,30}},targets = {{22,7010,5}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[50006] = {id = 50006,type = 5,belongSet = 3,belongLvRangeId = 1,chapterName = "",chapter = 0,questName = "日常任务",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{6,401,1,1,1201}},targets = {{49,1201,5}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[50007] = {id = 50007,type = 5,belongSet = 4,belongLvRangeId = 1,chapterName = "",chapter = 0,questName = "日常任务",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{6,401,1,1,1201}},targets = {{49,1201,5}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[50008] = {id = 50008,type = 5,belongSet = 5,belongLvRangeId = 1,chapterName = "",chapter = 0,questName = "日常任务",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{6,401,1,1,1201}},targets = {{49,1201,5}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
	[50009] = {id = 50009,type = 5,belongSet = 6,belongLvRangeId = 1,chapterName = "",chapter = 0,questName = "日常任务",level = 1,start = 0,chapterLast = 0,moduleId = 0,targetsPosition = {{6,401,1,1,1201}},targets = {{49,1201,5}},popup = 2,rewards = {{{3,1000},{104,32000}}},nextid = 0,acitveIds = {},guide_id = 0,},
}
