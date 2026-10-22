/* C11 example: dynamic allocation and explicit free(). */
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    const int input[] = {12, 18, 25, 31, 44};
    const size_t count = sizeof input / sizeof input[0];
    int *scores = malloc(count * sizeof *scores);
    if (scores == NULL) {
        fputs("Allocation failed\n", stderr);
        return EXIT_FAILURE;
    }

    int total = 0;
    for (size_t i = 0; i < count; ++i) {
        scores[i] = input[i];
        total += scores[i];
    }
    const double average = (double)total / (double)count;

    printf("Sum: %d\n", total);
    printf("Average: %.2f\n", average);

    free(scores);
    return EXIT_SUCCESS;
}
