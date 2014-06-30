#ifndef MODULE1_GLOBAL_H
#define MODULE1_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(MODULE1_LIBRARY)
#  define MODULE1SHARED_EXPORT Q_DECL_EXPORT
#else
#  define MODULE1SHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // MODULE1_GLOBAL_H
