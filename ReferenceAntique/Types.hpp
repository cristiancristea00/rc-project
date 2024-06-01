#pragma once

#include <variant>


using Pair = std::pair<std::size_t const, std::size_t const>;

using SingleOrPair = std::variant<std::size_t, Pair>;
