#ifndef __PDDL__DETAIL__NORMALIZATION__DOMAIN_H
#define __PDDL__DETAIL__NORMALIZATION__DOMAIN_H

#include <pddl/ASTForward.h>
#include <pddl/Context.h>
#include <pddl/NormalizedASTForward.h>

namespace pddl
{
namespace detail
{

////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Domain
//
////////////////////////////////////////////////////////////////////////////////////////////////////

normalizedAST::DomainPointer normalize(ast::DomainPointer &&domain);

////////////////////////////////////////////////////////////////////////////////////////////////////

}
}

#endif
