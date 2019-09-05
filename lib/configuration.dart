import 'package:flutter/material.dart';
import 'package:flutter_custom_calendar/controller.dart';
import 'package:flutter_custom_calendar/model/date_model.dart';

/**
 * 配置信息类
 */
class CalendarConfiguration {
  //默认是单选,可以配置为MODE_SINGLE_SELECT，MODE_MULTI_SELECT
  int selectMode;

  //展开状态
  bool expandStatus;

  //日历显示的最小年份和最大年份
  int minYear;
  int maxYear;

  //日历显示的最小年份的月份，最大年份的月份
  int minYearMonth;
  int maxYearMonth;

  //日历显示的当前的年份和月份
  int nowYear;
  int nowMonth;

  //可操作的范围设置,比如点击选择
  int minSelectYear;
  int minSelectMonth;
  int minSelectDay;

  int maxSelectYear;
  int maxSelectMonth;
  int maxSelectDay; //注意：不能超过对应月份的总天数

  Set<DateModel> defaultSelectedDateList = new Set(); //默认被选中的日期
  int maxMultiSelectCount; //多选，最多选多少个
  Map<DateTime, Object> extraDataMap = new Map(); //自定义额外的数据

  /**
   * UI绘制相关的配置
   */
  //各种事件回调
  OnMonthChange monthChange; //月份切换事件
  OnCalendarSelect calendarSelect; //点击选择事件
  OnMultiSelectOutOfRange multiSelectOutOfRange; //多选超出指定范围
  OnMultiSelectOutOfSize multiSelectOutOfSize; //多选超出限制个数

  //支持自定义绘制
  DayWidgetBuilder dayWidgetBuilder; //创建日历item
  WeekBarItemWidgetBuilder weekBarItemWidgetBuilder; //创建顶部的weekbar

  /**
   * 下面的信息不是配置的，是根据配置信息进行计算出来的
   */
  List<DateModel> monthList = new List(); //月份list
  List<DateModel> weekList = new List(); //星期list
  PageController pageController; //月份的controller
  PageController weekController; //星期的controller

  CalendarConfiguration(
      {this.selectMode,
      this.expandStatus,
      this.minYear,
      this.maxYear,
      this.minYearMonth,
      this.maxYearMonth,
      this.nowYear,
      this.nowMonth,
      this.minSelectYear,
      this.minSelectMonth,
      this.minSelectDay,
      this.maxSelectYear,
      this.maxSelectMonth,
      this.maxSelectDay,
      this.defaultSelectedDateList,
      this.maxMultiSelectCount,
      this.extraDataMap,
      this.monthList,
      this.weekList,
      this.pageController,
      this.weekController});

  @override
  String toString() {
    return 'CalendarConfiguration{selectMode: $selectMode, expandStatus: $expandStatus, minYear: $minYear, maxYear: $maxYear, minYearMonth: $minYearMonth, maxYearMonth: $maxYearMonth, nowYear: $nowYear, nowMonth: $nowMonth, minSelectYear: $minSelectYear, minSelectMonth: $minSelectMonth, minSelectDay: $minSelectDay, maxSelectYear: $maxSelectYear, maxSelectMonth: $maxSelectMonth, maxSelectDay: $maxSelectDay, defaultSelectedDateList: $defaultSelectedDateList, maxMultiSelectCount: $maxMultiSelectCount, extraDataMap: $extraDataMap, monthList: $monthList, weekList: $weekList, pageController: $pageController, weekController: $weekController}';
  }
}