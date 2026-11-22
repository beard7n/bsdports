--- ./ltmain.sh.orig	2025-11-07 21:16:00.000000000 +0200
+++ ./ltmain.sh	2026-10-18 22:45:11.404706000 +0200
@@ -9277,13 +9277,13 @@
 	  #
 	  case $version_type in
 	  # correct linux to gnu/linux during the next big refactor
-	  darwin|freebsd-elf|linux|midnightbsd-elf|osf|qnx|windows|none)
+	  darwin|linux|midnightbsd-elf|osf|qnx|windows|none)
 	    func_arith $number_major + $number_minor
 	    current=$func_arith_result
 	    age=$number_minor
 	    revision=$number_revision
 	    ;;
-	  freebsd-aout|sco|sunos)
+	  freebsd*|sco|sunos)
 	    current=$number_major
 	    revision=$number_minor
 	    age=0
@@ -9369,15 +9369,9 @@
           esac
 	  ;;
 
-	freebsd-aout)
+	freebsd*)
 	  major=.$current
-	  versuffix=.$current.$revision
-	  ;;
-
-	freebsd-elf | midnightbsd-elf)
-	  func_arith $current - $age
-	  major=.$func_arith_result
-	  versuffix=$major.$age.$revision
+	  versuffix=.$current
 	  ;;
 
 	irix | nonstopux)
