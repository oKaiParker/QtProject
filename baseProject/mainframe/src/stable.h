#pragma once

#if defined(_MSC_VER) && _MSC_VER == 1500
#pragma warning(push)
#pragma warning(default:4100)
#include <xutility>
#pragma warning(pop)
#endif

#include <stdio.h>

#ifdef _WINDOWS
#include <Dwmapi.h>
#include <Uxtheme.h>
#include <windows.h>
#include <winuser.h>
#endif //#ifdef _WINDOWS

//include Qt 
#include <QtGui>
#include <QtCore>
