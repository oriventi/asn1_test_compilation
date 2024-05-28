/*
 * Generated by asn1c-0.9.29 (http://lionet.info/asn1c)
 * From ASN.1 module "Ex3"
 * 	found in "/app/test.asn1"
 * 	`asn1c -D /app/out`
 */

#ifndef	_Student_H_
#define	_Student_H_


#include <asn_application.h>

/* Including external dependencies */
#include "University.h"
#include <UTF8String.h>
#include <NativeInteger.h>
#include <NativeReal.h>
#include <constr_SEQUENCE.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Student */
typedef struct Student {
	University_t	 university;
	UTF8String_t	 degree;
	long	 studentNumber;
	double	 avgGrade;
	
	/* Context for parsing across buffer boundaries */
	asn_struct_ctx_t _asn_ctx;
} Student_t;

/* Implementation */
extern asn_TYPE_descriptor_t asn_DEF_Student;

#ifdef __cplusplus
}
#endif

#endif	/* _Student_H_ */
#include <asn_internal.h>