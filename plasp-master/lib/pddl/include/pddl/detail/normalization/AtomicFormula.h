#ifndef __PDDL__DETAIL__NORMALIZATION__ATOMIC_FORMULA_H
#define __PDDL__DETAIL__NORMALIZATION__ATOMIC_FORMULA_H

#include <pddl/ASTForward.h>
#include <pddl/Context.h>
#include <pddl/NormalizedASTForward.h>

namespace pddl
{
namespace detail
{

////////////////////////////////////////////////////////////////////////////////////////////////////
//
// AtomicFormula
//
////////////////////////////////////////////////////////////////////////////////////////////////////

normalizedAST::AtomicFormula normalize(ast::AtomicFormula &&atomicFormula);

////////////////////////////////////////////////////////////////////////////////////////////////////

}
}

#endif