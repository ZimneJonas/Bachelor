#ifndef __PLASP__PDDL__TRANSLATION__VARIABLE_STACK_H
#define __PLASP__PDDL__TRANSLATION__VARIABLE_STACK_H

#include <pddl/NormalizedAST.h>

namespace plasp
{
namespace pddl
{

////////////////////////////////////////////////////////////////////////////////////////////////////
//
// VariableStack
//
////////////////////////////////////////////////////////////////////////////////////////////////////

struct VariableStack
{
	using Layer = ::pddl::normalizedAST::VariableDeclarations *;

	void push(Layer layer)
	{
		layers.push_back(layer);
	}

	void pop()
	{
		layers.pop_back();
	}

	std::vector<Layer> layers;
};

////////////////////////////////////////////////////////////////////////////////////////////////////

}
}

#endif
